layui.use(['form', 'jquery'], function () {
    var $ = layui.jquery
        , form = layui.form

    form.render();

    //提交
    form.on('submit(LAY-user-login-submit)', function (obj) { //回到函数调用submit,监听submit按钮的动作；提交时，会将表单中所有的input输入框中的name 和输入的值组成json作为参数由obj接收
        $.ajax({
            url: "judge",
            type: "post",
            data: JSON.stringify(obj.field),
            contentType: "application/json",
            success: function (res) {
                var jsonObj = JSON.parse(res)

                if (jsonObj == -1) {
                    layer.msg('用户名或密码错误', {
                        offset: '15px'
                        , icon: 2
                        , time: 1000
                        , offset: 'auto'
                    });
                } else if (jsonObj == 0) {
                    layer.msg('用户不存在', {
                        offset: '15px'
                        , icon: 2
                        , time: 1000
                        , offset: 'auto'
                    });
                } else {
                    //登入成功的提示与跳转
                    layer.msg('登入成功', {
                        offset: '15px'
                        , icon: 1
                        , time: 1000
                        , offset: 'auto'
                    }, function () {
                        location.href = '/index2'; //学生页面
                    });
                }
            }
        });
    });
});