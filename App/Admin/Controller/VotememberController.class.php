<?php 
 namespace Admin\Controller; 
 class VotememberController extends CommonController { 
     public function add($html='') {

         $r = M('votecate')->where(['status'=>'1'])->select();
         $this->assign('pInfo',$r);
         $this->display($html);
     }
 }
 ?>