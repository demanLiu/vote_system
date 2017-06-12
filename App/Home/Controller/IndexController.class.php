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
        $this->display();
    }

    public function checkValidate()
    {

    }


}