layui.use(['form', "jquery", 'layer', 'element'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        element = layui.element,
        form = layui.form;

    //监控导航栏的模块跳转
    element.on('nav(test)', function (elem) {
        var src = elem.attr("my-src");
        $('iframe').attr("src", src);
    });

    //监控页面上方的刷新按钮
    $("a[layadmin-event=refresh]").click(function () {
        window.location.reload();
    });

    //iframe窗口显示100%
    window.reinitIframe = function() {
        var iframe = document.getElementById("my-first-iframe");
        try {
            var bHeight = iframe.contentWindow.document.body.scrollHeight;
            var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
            var height = Math.max(bHeight, dHeight);
            iframe.height = height;
            //console.log(height);
        } catch (ex) {

        }
    };
    window.setInterval("reinitIframe()", 200);//隔两秒自动执行一次

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
