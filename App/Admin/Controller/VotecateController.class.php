<?php
namespace Admin\Controller;

class VotecateController extends CommonController {
    public $cateListAll = array();
    public function _initialize(){
        parent::_initialize();
    }
    public function add($html='') {

        $map['status'] = 1;
        $vo = M('vote')->where($map)->select();
        $this->assign('vote', $vo);
        $this->display($html);
    }


    public function edit($html='') {

        $model = D($this->dbname);
        $id = $_REQUEST ['id'];
        $map[$model->getPk()]=$id;
        $vo = $model->where($map)->find();
        //$vo = $model->getById($id);
        $this->assign('info', $vo);

        $map1['status'] = 1;
        $vo = M('vote')->where($map1)->select();
        $this->assign('vote', $vo);
        $this->display($html);
    }



}

?>