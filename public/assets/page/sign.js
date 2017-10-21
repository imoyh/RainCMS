(function($){

    $.validator.addMethod("username", function(value, element) {       
        return this.optional(element) || /^[A-Za-z0-9_]+$/.test(value);       
    }, "只能包括英文字母、数字和下划线"); 
    
    $.validator.addMethod("password", function(value, element) {       
        return this.optional(element) || /^.*(?=.*\d)(?=.*[A-Za-z]).*$/.test(value);       
    }, "强度不够，至少需要包含一个数字和字母"); 


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

    // 登录验证
    if($('#form-signin').length) {
        $('#form-signin').validate({
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
    
    // 注册验证
    if($('#form-signup').length) {
        $('#form-signup').validate({
            rules: {
                email: {
                    required: true,
                    email: true
                },
                username: {
                    required: true,
                    minlength: 5,
                    maxlength: 20,
                    username: true,
                },
                password: {
                    required: true,
                    minlength: 6,
                    password: true
                },
                repassword: {
                    required: true,
                    equalTo: '[name=password]'
                },
                captcha: {
                    required: true,
                },
                agree: {
                    required: true,
                }
            },
            messages: {
                email: {
                    required: '请输入邮箱',
                    email: '邮箱格式不正确'
                },
                username: {
                    required: '请输入用户名',
                    minlength: '用户名至少需要5个字符',
                    maxlength: '用户名最长不超过20个字符'
                },
                password: {
                    required: '密码不能为空',
                    minlength: '密码长度至少为6位',
                },
                repassword: {
                    required: '请再次输入密码',
                    equalTo: '两次输入不一致，请重新输入'
                },
                agree: {
                    required: '同意条款后才能注册'
                },
                captcha: {
                    required: '请填写验证码'
                }
            }
        });
    }
    
}(jQuery));

$('#agree').on('click',function(){
    console.log($(this));
})