<?php
namespace app\admin\controller;


class Home
{
    public function index()
    {
        return '<a href="/admin/login">登录</a>';
    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
}
