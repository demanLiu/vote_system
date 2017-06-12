<?php
namespace Admin\Model;
use Think\Model;


class VoteCateModel extends CommonModel {
    public $_auto		=	array(
       
        );
    public function _after_find(&$result,$options) {
        $r = M('vote')->where(['id'=>$result['vote_id']])->find();
        $result['vote_name'] = $r['title'];
    }
    
    public function _after_select(&$result,$options){
    	foreach($result as &$record){
    		$this->_after_find($record,$options);
    	}
    }
    function getlist() {
 	
 	  $data= $this->where('status'==1)->select();
      return $data;
    }
}
?>