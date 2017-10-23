<?php
//+----------------------------------------------------|
// | Description: 
// +---------------------------------------------------|
// | Author: OuYangHao [oyhemail@163.com]
// | Last Modified: 2017-10-22
//+----------------------------------------------------|

namespace app\admin\controller;

use app\admin\model\User as ModelUser;
use app\common\helper\Encrypt as HelperEncrypt;
use app\common\helper\Account as HelperAccount;
use app\common\validate\User as ValidateUser;
use app\common\validate\Common as ValidateCommon;

use think\Facade\Request;

use app\admin\controller\AppBase as Controller;
class User extends Controller
{
    public function __construct()
    {   
        parent::__construct();
    }
    
    /**
     * 登录
     *
     * @return void
     */
    public function login()
    {   

        ## 验证是否登录
        $this->isLogin('/');
        $request = Request::instance();
        
        if($request->isPost()) {
        
            ## 获取参数
            $param = $request->param();

            ## 验证参数
            $result = ValidateUser::login($param);
            if($result) return $result;

            ## 用户验证
            $userModel = new ModelUser;
            if(ValidateCommon::isEmail($param['account'])) {
                $user = $userModel->get('email', $param['account']);
            } else {
                $user = $userModel->get('username', $param['account']);
            }
            if(!$user) $this->error('用户不存在', '', ['name'=>'account'], 0);

            ## 密码验证
            $encrypt = new HelperEncrypt;
            $result = $encrypt->check($param['password'],$user['auth_code']);
            if($user['password'] !== $result['password']) {
                $this->error('密码错误', '', ['name'=>'password'], 0);
            }

            ## 密码更新
            $result = $encrypt->entry($param['password']);
            $data = [
                'password'  => $result['password'],
                'auth_code' => $result['auth_code'],
                'last_ip'   => $request->ip()
            ];
            $userModel->set('username', $user['username'], $data);

            ## 设置登录状态
            $param['username'] = $user['username'];
            $param['auth_code'] = $result['auth_code'];
            $account = new HelperAccount;
            $account->login($param);
            $this->success('登录成功','/');
            
        }

        return $this->fetch();
    }

    /**
     * 注册
     *
     * @return void
     */
    public function register()
    {   
        $this->isLogin('/');
        $request = Request::instance();

        if($request->isPost()) {
        
            ## 获取参数
            $param = $request->param();

            ## 验证参数
            $result = ValidateUser::register($param);
            if($result) return $result;

            ## 查看用户是否被注册
            $userModel = new ModelUser;
            $user = $userModel->get('username', $param['username']);
            if($user) $this->error('用户名已经存在', '', ['name'=>'username'], 0);
            $user = $userModel->get('email', $param['email']);
            if($user) $this->error('邮箱已被占用', '', ['name'=>'email'], 0);

            ## 密码加密
            $encrypt = new HelperEncrypt;
            $result = $encrypt->entry($param['password']);
            $param['auth_code'] = $result['auth_code'];
            $param['password'] = $result['password'];
            $param['ip'] = $request->ip();
            
            ## 插入数据
            $result = $userModel->add($param);

            if($result) {
                $account = new HelperAccount;
                $account->login($param);
                $this->success('注册成功', '/', '', 0);
            }
            
        }
        
        return $this->fetch();
    }
}
