<?php
//+----------------------------------------------------|
// | Description: 
// +---------------------------------------------------|
// | Author: OuYangHao [oyhemail@163.com]
// | Last Modified: 2017-10-26
//+----------------------------------------------------|
namespace app\admin\controller;

use app\admin\controller\AppPrivate as Controller;
class Home extends Controller
{

    public function __construct()
    {   
        parent::__construct();
    }

    public function index()
    {
        return $this->fetch();
    }




}
