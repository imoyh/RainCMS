<?php
namespace app\common\helper;


class Encrypt
{
    public function entry($str)
    {
        $auth = md5(uniqid(rand(),true));
        $ciphertext = md5($auth.substr(md5($str),0,16));
        return [
            'auth_code' => $auth,
            'password' => $ciphertext
        ];
    }


    public function check($str, $auth)
    {
        $ciphertext = md5($auth.substr(md5($str),0,16));
        return [
            'auth_code' => $auth,
            'password' => $ciphertext
        ];
    }

}
