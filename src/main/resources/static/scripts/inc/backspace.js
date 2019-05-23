layui.use('index', function () {
    var $ = layui.$;
    // 禁用快捷键
    $("html").on("keydown", function (e) {
        var ev = e || window.event;
        var obj = ev.relatedTarget || ev.srcElement || ev.target ||ev.currentTarget;
        //屏蔽退格删除键
        var code = event.keyCode || event.which;
        if (code == 8 &&  obj.nodeName != 'INPUT' && obj.nodeName != 'TEXTAREA') {
            return false;
        }
    });
});