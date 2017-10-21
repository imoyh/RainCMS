{extend name="./_common/sign_base"}



{block name="main"}
    <form id="form-signup" class="form-signin" method="post">
        <div class="form-group">
            <label class="sr-only" for="username">用户名</label>
            <input type="text" name="username" class="form-control" placeholder="用户名" autofocus>
        </div>
        <div class="form-group">
            <label class="sr-only" for="email">邮箱</label>
            <input type="email" name="email" class="form-control" placeholder="邮箱">
        </div>
        <div class="form-group">
            <label class="sr-only" for="password">密码</label>
            <input type="password" name="password" class="form-control" placeholder="密码">
        </div>
        <div class="form-group">
            <label class="sr-only" for="repassword">重复密码</label>
            <input type="password" name="repassword" class="form-control" placeholder="重复密码">
        </div>

        <div class="form-group">
            <div class="row">
                <div class="col-sm-6">
                    <a href="javascript:;">
                        <img class="captcha-img" src="/captcha" onclick="this.src=this.src"/>
                    </a>
                </div>
                <div class="col-sm-6">
                    <label class="sr-only" for="password">验证码</label>
                    <input type="text" name="captcha" class="form-control" placeholder="验证码">
                </div>
            </div>
        </div>

        
        <div class="form-group ">
            <label class="checkbox-custom check-success">
                <input type="checkbox" id="agree" name="agree">
                <label for="agree">同意<a href="#">《注册条款》</a></label>
            </label>
            
        </div>

        <!--label class="checkbox-custom check-success">
            <input type="checkbox" id="agree" name="agree">
            <label for="agree">同意<a href="#">《注册条款》</a></label>
        </label-->


        <button class="btn btn-lg btn-success btn-block" type="submit">注册</button>

        <div class="registration m-t-20 m-b-20">
            已经有账号？ <a class="" href="login.html">前往登录</a>
        </div>
    </form>
{/block}
