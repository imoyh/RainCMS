<?php
//+----------------------------------------------------|
// | Description: 
// +---------------------------------------------------|
// | Author: OuYangHao [oyhemail@163.com]
// | Last Modified: 2017-10-27
//+----------------------------------------------------|
namespace app\admin\controller;

use app\admin\controller\AppPrivate as Controller;
class Content extends Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    
    public function add()
    {
        return $this->fetch();
    }


    public function show()
    {
        return $this->fetch();
    }



}