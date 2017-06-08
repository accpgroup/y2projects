/*
 *  Description: 定制javascript代码中使用的登录页面
 */

var ReadyLogin = function() {

    return {
        init: function() {
            /*
             *  Jquery验证,查看更多示例和文档:https://github.com/jzaefferer/jquery-validation
             */

            /* Login form - Initialize Validation */
            $('#form-login').validate({
                errorClass: 'help-block animation-slideUp', // 你可以改变不同的入口动画的动画类——检查动画页面
                errorElement: 'div',
                errorPlacement: function(error, e) {
                    e.parents('.form-group > div').append(error);//error
                },
                highlight: function(e) {
                    $(e).closest('.form-group').removeClass('has-success has-error').addClass('has-error');
                    $(e).closest('.help-block').remove();
                },
                success: function(e) {
                    e.closest('.form-group').removeClass('has-success has-error');
                    e.closest('.help-block').remove();
                },
                rules: {
                    'username': {
                        required: true,
                        minlength: 1/*,
                        email: true*/  /*这里可以用来验证邮箱*/
                    },
                    'password': {
                        required: true,
                        minlength: 5
                    }
                },
                messages: {
                    'username': '用户名不能为空',
                    'password': {
                        required: '密码不能空',
                        minlength: '你的密码必须至少为5个字符'
                    }
                }
            });
        }
    };
}();