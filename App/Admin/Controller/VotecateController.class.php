<?php
namespace Admin\Controller;

class VotecateController extends CommonController {
	public $cateListAll = array();
	
	
	public function _initialize(){
//		$this->cateChildList(0,$nb);//从父级=0开始递归
//		 $this->assign('list',$this->cateListAll);
		
		parent::_initialize();
		
	}
    public function add($html='') {

        $model = D($this->dbname);
        $map['level']= 0;
        $vo = $model->where($map)->select();
        //$vo = $model->getById($id);
        $this->assign('pInfo', $vo);
        $this->display($html);
    }

	



	
	


}

?>