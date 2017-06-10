<?php
namespace Admin\Model;
use Think\Model;


class VoteModel extends CommonModel {
    public $_auto		=	array(
       
        );
    public function _after_find(&$result,$options) {
    	$result['path']=getThumbImageById($result['image']);
        $result['start_at'] = date('Y-m-d H:i:s',$result['start_at']);
        $result['end_at'] = date('Y-m-d H:i:s',$result['end_at']);
    }
    
    public function _after_select(&$result,$options){
    	foreach($result as &$record){
    		$this->_after_find($record,$options);
    	}
    }
    public function _before_insert(&$data,$options){
        $data['start_at'] = strtotime($data['start_at']);
        $data['end_at'] = strtotime($data['end_at']);
    }
    function getlist() {
 	
 	  $data= $this->where('status'==1)->select();
      return $data;
    }
}
?>