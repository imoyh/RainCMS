<?php
//+----------------------------------------------------
// | Description: 
// +----------------------------------------------------
// | Author: OuYangHao [oyhemail@163.com]
// | Last Modified: 2017-10-20
//+----------------------------------------------------
namespace app\admin\model;

use \think\Db;

class User
{
    public function get($key,$value)
    {
        return Db::name('users')->where($key,$value)->find();
    }

    public function add($data, $type = false)
    {
        ## 筛选需要储存的参数
        $info = [
            'username'  => $data['username'],
            'password'  => $data['password'],
            'auth_code' => $data['auth_code'],
            'email'     => $data['email'],
            'reg_ip'    => $data['ip'],
            'reg_time'  => date('Y-m-d H:i:s',time())
        ];
        
        ## 为数据库添加数据
        Db::name('users')->insert($info);

        ## 返回类型
        if($type) {
            return Db::name('users')->where('username',$info['username'])->find();
        } else {
            return true;
        }
    }
    
    public function set($key,$value,$data)
    {
        Db::name('users')->where($key, $value)->update($data);
    }
    
}
