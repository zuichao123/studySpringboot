layui.use(['form', 'jquery','layer'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        form = layui.form;

    form.on("submit(layuiadmin-app-form-submit)", function (data) {

        var field = data.field
        $.post('/person/edit', field, function (relObj) {
            if (relObj.code == 1) {
                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);
                parent.layer.msg(relObj.message, {time: 3000, icon: 6});
                return;
            }
            parent.layer.msg(relObj.message, {time: 3000, icon: 5});
        })
    })
});
