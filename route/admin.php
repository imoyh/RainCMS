<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

Route::bind('admin');
Route::get('login', '@admin/user/login');
Route::get('register', '@admin/user/register');
Route::post('login', '@admin/user/login');
Route::post('register', '@admin/user/register');


return [
    // 'login' => [
    //     '@admin/user/login',
    //     [   'domain' => 'demo.io',
    //         'cross_domain' => true
    //     ]
    // ]
];
