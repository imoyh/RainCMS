(function($){

    $.validator.setDefaults({  
        submitHandler: function(from) {  
            var $from = $(from);
            $.ajax({
                type: from.method,
                url: from.action,
                data: $from.serializeArray(),
                dataType: "json",
                success: function (res) {
                    if(res.code) {
                        window.location.href = res.url;
                    } else {
                        var $input = $from.find('[name='+res.data.name+']');
                        var $ele = $('<label id="'+res.data.name+'-error" class="error" for="'+res.data.name+'">'+res.msg+'</label>');
                        $input.addClass('error');
                        $input.after($ele);
                        $from.find('.captcha-img').attr('src',$from.find('.captcha-img').attr('src'));
                    }
                }
            });
        }  
    }); 

    // 管理员登录验证
    if($('#admin-login-form').length) {
        $('#admin-login-form').validate({
            rules: {
                account: 'required',
                password: 'required',
                captcha: 'required'
            },
            messages: {
                account: '请输入用户名或邮箱',
                password: '密码不能为空',
                captcha: '请填写验证码'
            }
        });
    }
    
}(jQuery));

