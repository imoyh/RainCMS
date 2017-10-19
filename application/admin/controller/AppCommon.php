<?php
//+----------------------------------------------------
// | Description: 
// +----------------------------------------------------
// | Author: OuYangHao [oyhemail@163.com]
// | Last Modified: 2017-10-20
//+----------------------------------------------------
namespace app\admin\controller;

use think\Facade\Session;
use think\Facade\Cookie;
use think\Facade\Request;

use think\Controller;

class AppCommon extends Controller
{
    
    public function isLogin()
    {
        if (Session::has('username')) {
            return true;
        }
        
    }


    public function isAuth()
    {
        

    }
}