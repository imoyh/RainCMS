<?php
//+----------------------------------------------------
// | Description: 
// +----------------------------------------------------
// | Author: OuYangHao [oyhemail@163.com]
// | Last Modified: 2017-10-20
//+----------------------------------------------------
namespace app\common\validate;

use \think\Validate;

class User
{
    public static function login($data)
    {
        $rule = [
            'account'    => ['require'],
            'password'   => ['require'],
            'captcha'    => ['require','captcha']
        ];

        $msg = [
            'account.require'  => [
                'code'      => 0,
                'msg'       => '请填写登录用户名或邮箱',
                'data'      => [
                    'name'  => 'account'
                ],
            ],
            'password.require'  => [
                'code'      => 0,
                'msg'       => '请填写登录密码',
                'data'      => [
                    'name'  => 'password'
                ],
            ],
            'captcha.require'  => [
                'code'      => 0,
                'msg'       => '请填写验证码',
                'data'      => [
                    'name'  => 'captcha'
                ],
            ],
            'captcha.captcha'  => [
                'code'      => 0,
                'msg'       => '验证码不正确',
                'data'      => [
                    'name'  => 'captcha'
                ],
            ]
        ];

        $validate = new Validate($rule,$msg);
        if (!$validate->check($data)) {
            return $validate->getError();
        }

        return false;
    }

    public static function register($data)
    {
        $rule = [
            'username'      =>  ['require', 'regex' => '/^[a-zA-Z0-9_]{5,16}$/'],
            'email'         =>  ['require', 'email'],
            'password'      =>  ['require', 'min' => 6, 'regex' => '/^.*(?=.*\d)(?=.*[A-Za-z]).*$/'],
            'repassword'    =>  ['require', 'confirm' => 'password'],
            'accept'        =>  ['accepted'],
            'captcha'       =>  ['require','captcha']
        ];

        $msg = [
            // 用户名
            'username.require'  => [
                'code'      => 0,
                'msg'       => '用户名不能为空',
                'data'      => [
                    'name'  => 'username'
                ],
            ],
            'username.regex'  => [
                'code'      => 0,
                'msg'       => '用户名由5到16位（字母，数字，下划线）组成',
                'data'      => [
                    'name'  => 'username'
                ],
            ],

            //邮箱
            'email.require'  => [
                'code'      => 0,
                'msg'       => '用户邮箱不能为空',
                'data'      => [
                    'name'  => 'email'
                ],
            ],
            'email.email'  => [
                'code'      => 0,
                'msg'       => '邮箱格式不正确',
                'data'      => [
                    'name'  => 'email'
                ],
            ],

            // 密码
            'password.require'   => [
                'code'      => 0,
                'msg'       => '用户密码不能为空',
                'data'      => [
                    'name'  => 'password'
                ],
            ],
            'password.min'       => [
                'code'      => 0,
                'msg'       => '密码长度不能低于6位',
                'data'      => [
                    'name'  => 'password'
                ],
            ],
            'password.regex'     => [
                'code'      => 0,
                'msg'       => '密码强度不够，至少需要包含一个数字和字母',
                'data'      => [
                    'name'  => 'password'
                ],
            ],

            // 验证密码
            'repassword.require' => [
                'code'      => 0,
                'msg'       => '请再次填写您的密码',
                'data'      => [
                    'name'  => 'repassword'
                ],
            ],
            'repassword.confirm' => [
                'code'      => 0,
                'msg'       => '两次密码不一致',
                'data'      => [
                    'name'  => 'repassword'
                ],
            ],

            // 条款，验证码
            'accept.require'    => [
                'code'      => 0,
                'msg'       => '需要同意条款才能完成注册',
                'data'      => [
                    'name'  => 'accept'
                ],
            ],
            'captcha.require'   => [
                'code'      => 0,
                'msg'       => '请填写验证码',
                'data'      => [
                    'name'  => 'captcha'
                ],
            ],
            'captcha.captcha'  => [
                'code'      => 0,
                'msg'       => '验证码不正确',
                'data'      => [
                    'name'  => 'captcha'
                ],
            ]
        ];

        $validate = new Validate($rule,$msg);
        if (!$validate->check($data)) {
            return $validate->getError();
        }

        return false;
    }
}
