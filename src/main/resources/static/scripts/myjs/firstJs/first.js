layui.use(['form', "jquery", 'layer'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        form = layui.form;

    //修改密码
    $("#editPwd").on('click',function () {
        // 弹出框
        layer.open({
            type: 2,
            title: "修改密码",
            content: '/admin/editPasswordUI',
            area: ['554px', '469px'],
            btn: ['确定', '取消'],
            resize: false,
            yes: function (index, layero) {
                var submit = layero.find('iframe').contents().find("#layuiadmin-app-form-submitAdmin");
                submit.trigger('click');
            },
            end: function () {
            }
        });
    })

    //others


});
