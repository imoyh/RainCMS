{extend name="./_common/sign_base"}



{block name="main"}
    <form id="form-signin" class="form-signin" action="/login" method="post">
        <div class="login-wrap">
            <div class="form-group">
                <label class="sr-only" for="account">用户名/邮箱</label>
                <input type="text" name="account" class="form-control" placeholder="用户名/邮箱" autofocus>
            </div>
            <div class="form-group">
                <label class="sr-only" for="password">密码</label>
                <input type="password" name="password" class="form-control" placeholder="密码">
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-xs-6">
                        <a href="javascript:;">
                            <img class="captcha-img" src="/captcha" onclick="this.src=this.src"/>
                        </a>
                    </div>
                    <div class="col-xs-6">
                        <label class="sr-only" for="password">验证码</label>
                        <input type="text" name="captcha" class="form-control" placeholder="验证码">
                    </div>
                </div>
            </div>
            
            <button class="btn btn-lg btn-success btn-block" type="submit">登录</button>
            <label class="checkbox-custom check-success">
                <input type="checkbox" name="remember" id="remember"> <label for="remember">记住登录</label>
                <a class="pull-right" data-toggle="modal" href="#forgotPass"> 忘记密码?</a>
            </label>

            <div class="registration">
                还没有注册账号?
                <a class="" href="/register.html">立即注册</a>
            </div>

        </div>

        <!-- Modal -->
        <!-- <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="forgotPass" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Forgot Password ?</h4>
                    </div>
                    <div class="modal-body">
                        <p>Enter your e-mail address below to reset your password.</p>
                        <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">Cancel</button>
                        <button class="btn btn-success" type="button">Submit</button>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- modal -->

    </form>
{/block}
