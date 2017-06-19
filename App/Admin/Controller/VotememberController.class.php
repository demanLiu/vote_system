<?php 
 namespace Admin\Controller; 
 class VotememberController extends CommonController {

     public function add($html='') {

         $r = M('votecate')->where(['status'=>'1'])->select();
         $this->assign('pInfo',$r);
         $this->display($html);
     }
     public function edit($html='') {

         $model = D($this->dbname);
         $id = $_REQUEST ['id'];
         $map[$model->getPk()]=$id;
         $vo = $model->where($map)->find();
         //$vo = $model->getById($id);
         $this->assign('info', $vo);
         $r = M('votecate')->where(['status'=>'1'])->select();
         $this->assign('pInfo',$r);

         $this->display($html);
     }
 }
 ?>