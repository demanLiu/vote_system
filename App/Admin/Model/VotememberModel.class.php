<?php
namespace Admin\Model;
use Think\Model;


class VotememberModel extends CommonModel {
    public $_auto		=	array(
       
        );
    public function _after_find(&$result,$options) {
        $r = M('votecate')->where(['id'=>$result['group_id']])->find();
        $result['SmallPhoto'] = getThumbImageById($result['image']);
        $result['group_name'] = $r['name'];
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