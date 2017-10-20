<?php
namespace app\common\helper;

use think\Facade\Session;
use think\Facade\Cookie;

class Account
{
    public function login($user)
    {   
        Session::set('username', $user['username']);
        Session::set('auth_code', $user['auth_code']);
        return true;
    }

}
