<?php
namespace app\common\helper;

use think\Facade\Session;
use think\Facade\Cookie;

class Account
{
    public function login($user)
    {   

        return $user;
        Session::set('username', $user['username']);



    }

}
