<?php
namespace Admin\Model;
use Think\Model;


class VoteCateModel extends CommonModel {
    public $_auto		=	array(
       
        );
    public function _after_find(&$result,$options) {
        $result['level_name'] = $result['level'] == 0? "一级菜单":"二级菜单";
        $r = $this->where(['id'=>$result['parent_id']])->find();
        $result['parent'] = empty($r)?'无':$r['name'];
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