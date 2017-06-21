<?php
namespace Home\Controller;
use Home\Model\MemberModel;
use Think\Controller;
require_once './Library/jssdk.php';
use JSSDK;
class IndexController extends Controller{

    public function __construct()
    {
        parent::__construct();
        $this->appid = $this->getConfig('WXAPPID');//"wx96aa2fdc63463cd0";
        $this->secret = $this->getConfig('WXAPPSECRET'); // "7be7fbf23710c04bade010d43fdb32b5";
        $id = $this->getConfig('ACTIVIATIONID');
        $this->hostUrl = $this->getConfig('WXHOST').'/Home/Index/lists?id='.$id;
        session_start();
    }

    //系统首页
    public function index(){
        $this->authorize();
    }
    public function lists(){
        //test
//        $_SESSION['openID'] = 1111;
        if(!$_SESSION['openID']){
            $this->getOpenID();
        }
        $vote_id = I('id')?I('id'):1;
        $vote = M('vote')->find($vote_id);
        $vote['image'] = getThumbImageById($vote['image']);
        $votecate = M('votecate')->where(['vote_id'=>$vote_id])->select();
        $this->assign('vote',$vote);
        $this->assign('votecate',$votecate);
        $this->assign('ajaxUrl','/Index');
        $this->assign('host', $this->getConfig('WXHOST'));
        $jssdk = new JSSDK($this->appid, $this->secret);
        $signPackage = $jssdk->GetSignPackage();
        $this->assign('signPackage',$signPackage);
        $this->display();
    }
    public function authorize()
    {
        $url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=".$this->appid."&redirect_uri=".urlencode($this->hostUrl).
            "&response_type=code&scope=snsapi_base&state=123#wechat_redirect";
        redirect($url);

    }
    public function getOpenID()
    {
        $code = $_GET["code"];
        $get_token_url = 'https://api.weixin.qq.com/sns/oauth2/access_token?appid='.$this->appid.
            '&secret='.$this->secret.'&code='.$code.'&grant_type=authorization_code';
        $ch = curl_init();
        curl_setopt($ch,CURLOPT_URL,$get_token_url);
        curl_setopt($ch,CURLOPT_HEADER,0);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1 );
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 10);
        $res = curl_exec($ch);
        curl_close($ch);
        $json_obj = json_decode($res,true);
    //根据openid和access_token查询用户信息
        $access_token = $json_obj['access_token'];
        $openid = $json_obj['openid'];
        $_SESSION['openID'] = $openid;

    }
    public function getList()
    {
        $cate_id = I('cateID')?I('cateID'):1;
        $member = M('Votemember')->where(['group_id'=>$cate_id])->select();
        foreach($member as &$item){
            $item['SmallPhoto'] = getThumbImageById($item['image']);
            $item['Ifvote'] = $this->checkIsVote($item['id'],$_SESSION['openID']);
        }
        echo json_encode($member);
    }
    public function getRank()
    {
        $cate_id = I('cateID')?I('cateID'):1;
        $votecate = M('votecate')->where(['id'=>$cate_id])->find();
        $vote = M('vote')->where(['id'=>$votecate['vote_id']])->find();
        if(time()<$vote['end_at']){
            echo json_encode('');
            return ;
        }
        $member = M('Votemember')->where(['group_id'=>$cate_id])->order('vote_num desc')->limit($vote['per_prize_num'])->select();
        foreach($member as &$item){
            $item['SmallPhoto'] = getThumbImageById($item['image']);
            $item['Ifvote'] = $this->checkIsVote($item['id'],$_SESSION['openID']);
        }
        echo json_encode($member);
    }
    public function vote()
    {
        $productId = I('ProductID') ? I('ProductID') : 1;
        $condition['object_id'] = $_SESSION['openID'];
        $condition['updated_at'] = strtotime(date('Y-m-d'));
        $condition['member_id'] = $productId;
        $condition['is_vote'] = 1;
        if (M('votelog')->where($condition)->find()){
            echo json_encode(['vote' => '已经投过']);
        }else{
            M('votelog')->add($condition);
            M('votemember')->where(['id'=>$productId])->setInc('vote_num');
            echo json_encode(['vote' => '投票成功']);
        }

    }
    public function getDetail()
    {
        $productId = I('id') ? I('id') : 1;
        $result = M('Votemember')->where(['id'=>$productId])->find();
        $result['SmallPhoto'] = getThumbImageById($result['image']);
        $result['Ifvote'] = $this->checkIsVote($result['id'],$_SESSION['openID']);
        echo json_encode($result);
    }
    public function checkIsVote($member_id,$object_id)
    {
        $map['member_id'] = $member_id;
        $map['object_id'] = $object_id;
        $map['updated_at'] = strtotime(date('Y-m-d'));
        $map['is_vote'] = 1;
        $r = M('votelog')->where($map)->find();
        return $r?false:true;
    }
    public function getConfig($name)
    {
        $result = M('config')->where(['name'=>$name])->find();
        return $result?$result['value']:'';
    }
}