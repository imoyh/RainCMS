<?php
//+----------------------------------------------------|
// | Description: 
// +---------------------------------------------------|
// | Author: OuYangHao [oyhemail@163.com]
// | Last Modified: 2017-10-22
//+----------------------------------------------------|
namespace app\admin\controller;

use think\Facade\Session;
use think\Facade\Cookie;
use think\Facade\Request;
use think\Facade\Response;

use think\Controller;

class AppBase extends Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 验证是否已经登录
     *
     * @param string $url
     * @param string $text
     * @return boolean
     */
    public function isLogin($url='',$text='用户已登录')
    {   
        ## 验证session中是否存在用户名
        if(Session::has('username')) {
            
            ## 如果传入url则自动跳转
            if($url != '') {
                $this->success($text, $url, '', 2);
            }
            return true;
        }
        return false;
    }

    
    /**
     * 验证是否没有登录
     *
     * @param string $url
     * @return boolean
     */
    public function isNotLogin($url='')
    {   

        ## 验证session中是否存在用户名
        if(!Session::has('username')) {
            ## 如果传入url则自动跳转
            if($url != '') {
                $this->success('您还没有登录', $url, '', 2);
            }
            return true;
        }
        return false;
    }


    public function isAuth()
    {
        

    }
}