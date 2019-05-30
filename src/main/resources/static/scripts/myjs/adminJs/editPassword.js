layui.use(['form', "jquery"], function () {
    var $ = layui.jquery,
        form = layui.form;

    var password = /^[0-9a-zA-Z]{8,16}$/; // 长度为8-16位 数字、英文的组合；
    form.verify({ //按照lay-verify验证
            oldPassword: function (value) {
                if (value != null && value != "") {
                    var message;
                    $.ajax({
                        url: "/checkPassword",
                        type: "POST",
                        data: {"oldPassword":value},
                        async: false,
                        success: function(result) {
                            message = result;
                        }
                    });
                    if (message != "" && message != null) {
                        return message;
                    }
                }
            },
            newPassword: function (value) {
                if (value != "" && value != null) {
                    if(password.test(value) === false) {
                        return "仅支持8-16位数字或英文字母";
                    }
                }
            },
            newPassword2: function (value) {
                var newPassword = $(".layui-form #newPassword").val();
                if (newPassword != value) {
                    return "两次密码输入不一致";
                }
            }
        });

    form.on("submit(layuiadmin-app-form-submitAdmin)", function (data) {
            $.ajax({
                url: '/admin/editPassword',
                type: "post",
                data: JSON.stringify(data.field),
                contentType: "application/json",
                success: function (relObj) {
                    if (relObj.code == 1) {
                        var index = parent.layer.getFrameIndex(window.name);
                        parent.layer.close(index);
                        parent.layer.msg(relObj.message, {time: 3000, icon: 6});
                        window.parent.location.href = "/";
                        return;
                    } else {
                        layui.alert('error');
                    }
                }

        })
    })

});
