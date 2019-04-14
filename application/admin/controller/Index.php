<?php
namespace app\admin\controller;
use think\Controller;

class Index extends Controller
{
    public function index()
    {
        return view();
    }

    // 首页
    public function home()
    {
    	echo "Home";
    }
}
