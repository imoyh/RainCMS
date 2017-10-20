{extend name="./_common/sign_base"}



{block name="main"}
<form id="admin-login-form" class="form-signin" action="/admin/login" method="post">
    <h2 class="form-signin-heading">管理员登录</h2>

    <div class="login-wrap cmxform">
        <div class="form-group ">
            <input type="text" name="account" class="form-control" placeholder="用户名/邮箱" autofocus>
        </div>
        <div class="form-group ">
            <input type="password" name="password" class="form-control" placeholder="密码">
        </div>
        <div class="row">
            <div class="col-sm-6">
                <a href="javascript:;"><img class="captcha-img" src="/captcha" onclick="this.src=this.src" style="height: 40px;"></a>
            </div>
            <div class="col-sm-6">
            <div class="form-group ">
                <input type="text" name="captcha" class="form-control" placeholder="验证码">
            </div>
            </div>
        </div>
        <label class="checkbox">
            <input type="checkbox" value="remember-me"> 记住登录
            <span class="pull-right">
                <a data-toggle="modal" href="#myModal"> 忘记密码?</a>
            </span>
        </label>
        <button class="btn btn-lg btn-login btn-block" type="submit">登录</button>
        <!-- <p>通过第三方平台登录</p>
        <div class="login-social-link">
            <a href="index.html" class="facebook">
                <i class="fa fa-facebook"></i>
                Facebook
            </a>
            <a href="index.html" class="twitter">
                <i class="fa fa-twitter"></i>
                Twitter
            </a>
        </div> -->
        <div class="registration">
            用户登录请
            <a class="" href="/login">点击前往</a>
        </div>
    </div>

    <!-- Modal -->
    <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
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
    </div>
    <!-- modal -->

</form>
{/block}
