<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller{
	

	
	//系统首页
    public function index(){
        $this->checkValidate();
        $vote_id = I('id')?I('id'):1;
        $vote = M('vote')->find($vote_id);
        $vote['image'] = getThumbImageById($vote['image']);
        $votecate = M('votecate')->where(['vote_id'=>$vote_id])->select();
        $this->assign('vote',$vote);
        $this->assign('votecate',$votecate);
        $this->assign('ajaxUrl','/Index');
        $this->display();
    }

    public function checkValidate()
    {

    }
    public function getList()
    {
        $cate_id = I('cateID')?I('cateID'):1;
        $member = M('Votemember')->where(['group_id'=>$cate_id])->select();
        foreach($member as &$item){
            $item['SmallPhoto'] = getThumbImageById($item['image']);
            //TODO
            $item['Ifvote'] = true;
        }
        echo json_encode($member);
    }
    public function vote()
    {
        $productId = I('ProductID')?I('cateID'):1;

    }
}