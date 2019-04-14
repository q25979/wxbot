<?php
namespace app\admin\controller;
use think\Controller;
use think\Request;

class Wxmanage extends Controller
{
    public function index()
    {
    	if (request()->isAjax()) {
    		return json([
    			'code' => 0,
    			'msg'  => '',
    			'data' => [
    				[
    					'id' => 1,
	    				'wxname' => '黄东坡',
	    				'wxstatus'  => '正常',
	    				'botstatus' => '开启',
	    				'login_time' => '2019/04/05 20:40:52'
    				]
    			],
    			'count' => 1
    		]);
    	}
        return $this->fetch();
    }
}
