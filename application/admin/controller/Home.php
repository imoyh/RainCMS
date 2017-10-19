<?php
namespace app\admin\controller;


class Home
{
    public function index()
    {

    }

    public function hello($name = 'ThinkPHP5')
    {
        return 'hello,' . $name;
    }
}
