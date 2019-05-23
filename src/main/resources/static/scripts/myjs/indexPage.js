layui.use(['table', "jquery"], function () {
    var table = layui.table,
        $ = layui.jquery;

    table.render({
        elem: '#layui_table_id' //指定表格元素
        , url: 'showTable'  //请求路径
        , where: {keyWord: ""}  //请求参数
        , method: 'post'  //提交方式
        , page: true
        , toolbar: '#toolbarDemo' //开启工具栏
        , limit: 10//要传向后台的每页显示条数
        , cols: [[
            //{type: 'checkbox'}, //开启多选框
            {field: 'id', title: '序号', sort: true},
            {field: 'name', title: '姓名', sort: true},
            {field: 'age', title: '年龄', sort: true},
            {field: 'gender', title: '性别', sort: true},
            {field: 'email', title: '邮箱', sort: true},
            {field: 'city', title: '住址', sort: true},
            {field: 'right', title: '操作', toolbar: '#rmt-table-toolbar-bar', minWidth: 230}
        ]]
        , done: function (res, curr, count) {
            //数据的回调用，可不写
            //此处添加鼠标放在table上移动的时候，高度变高
            console.log(res)
            $(window).resize(function () {
                // alert("asdhgajsghdj")
            })
            // 鼠标在table框上移动时候  高度变高
            var box = $(".box_height").find(".layui-table-box")
            var height = $(box).find(".layui-table-body").css("height")
            var boxheight = parseInt(height) + 38 + "px"
            $(box).css("height", boxheight);
        }
    });

    var active = {
        reload: function () {
            layer.closeAll();
            table.reload('rmt-table', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    name: $('#name').val()//姓名
                    , age: $('#age').val()//年龄
                    , gender: $('#gender').val()// 性别
                    , email: $('#email').val() // 邮箱
                    , city: $('#cigy').val() //地址
                }
            });
        },

        add: function () {
            layer.closeAll();
            // 弹出框
            layer.open({
                type: 2,
                title: "添加",
                content: '/person/addUI',
                area: ['554px', '469px'],
                btn: ['确定', '取消'],
                resize: false,
                yes: function (index, layero) {
                    var iframeWindow = window['layui-layer-iframe' + index],
                        submit = layero.find('iframe').contents().find("#rmt-submit");

                    //监听提交
                    iframeWindow.layui.form.on('submit(rmt-submit)', function (data) {
                        var field = data.field; //获取提交的字段
                        $.post('/person/add', field, function (relObj) {
                            if (relObj.code == 1) {
                                top.layer.msg('添加成功', {time: 5000, icon: 6});
                                active['reload'].call();
                                layer.close(index);
                                return;
                            }
                            top.layer.msg(relObj.message, {time: 5000, icon: 5});
                        })
                    });
                    submit.trigger('click');
                    return false;
                }
            });
        }
    };

    //监听按钮
    table.on('tool(dataTable)', function (obj) {
        console.log(obj.event)
        // layer.closeAll();
        var data = obj.data;
        //编辑
        if (obj.event == 'edit') {
            // 弹出框
            layer.open({
                type: 2,
                title: "编辑",
                content: '/person/editUI?id=' + data.id,
                area: ['554px', '469px'],
                btn: ['确定', '取消'],
                resize: false,
                yes: function (index, layero) {
                    var iframeWindow = window['layui-layer-iframe' + index],
                        submit = layero.find('iframe').contents().find("#rmt-submit");

                    //监听提交
                    iframeWindow.layui.form.on('submit(rmt-submit)', function (data) {

                        var field = data.field; //获取提交的字段
                        $.post('/person/edit', field, function (relObj) {
                            if (relObj.code == 1) {
                                top.layer.msg('编辑成功', {time: 5000, icon: 6});
                                active['reload'].call();
                                layer.close(index);
                                layer.open().closeAll();
                                return;
                            }
                            top.layer.msg(relObj.message, {time: 5000, icon: 5});
                        })
                    });
                    submit.trigger('click');
                    return false;
                }
            });
        }

        // 删除
        if (obj.event === 'del') {
            console.log('----------------------->'+data.id)
            layer.confirm('是否确认删除？', function (index) {

                var df = {'id': data.id}
                $.post("/person/del", df, function (res) {
                    if (res == 1) {
                        top.layer.msg('删除成功', {time: 5000, icon: 6});
                        active['reload'].call();
                        return true;
                    } else {
                        layer.alert("删除失败", {time:5000,icon: 5});
                        return false;
                    }
                });
            });
        }

    })

    // var active =
    //
    //     $("#sear1").keyup(function (event) {
    //         if (event.keyCode == 13) {
    //             var keyWord = $("#sear1").val();
    //             addData(keyWord);
    //         }
    //     });

});