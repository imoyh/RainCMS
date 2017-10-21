<?php
namespace app\admin\controller;


use app\admin\controller\AppPrivate;
class Home extends AppPrivate
{

    public function __construct()
    {   
        parent::__construct();
        $this->isNotLogin('/login');
    }

    public function index()
    {
        return $this->fetch();
    }




}
