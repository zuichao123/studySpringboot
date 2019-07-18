layui.use(['table', 'jquery', 'form'], function () {
    var table = layui.table,
        $ = layui.jquery,
        form = layui.form;

    //上来先全部查询出来
    chaxun("");

    function chaxun(name) {
        table.render({
            elem: '#layui_table_id' //指定表格元素
            , url: '/showTable'  //请求路径
            , where: {name: name}  //请求参数
            , method: 'post'  //提交方式
            , page: true
            , toolbar: '#toolbarDemo' //开启工具栏
            , limit: 10//要传向后台的每页显示条数
            , cols: [[
                //{type: 'checkbox'}, //开启多选框
                {field: 'id', title: '序号', sort: true},
                {field: 'name', title: '姓名', sort: true},
                {field: 'age', title: '年龄', sort: false},
                {field: 'gender', title: '性别', sort: true},
                {field: 'email', title: '邮箱', sort: false},
                {field: 'province', title: '省份', sort: false},
                {field: 'city', title: '城市', sort: false},
                {field: 'updateTime', title: '添加时间', sort: true},
                {field: 'comments', title: '备注', sort: false},
                {field: 'right', title: '操作', toolbar: '#rmt-table-toolbar-bar', minWidth: 130}
            ]]
            , done: function (res, curr, count) {
                //数据的回调用，可不写
                //此处添加鼠标放在table上移动的时候，高度变高
                //console.log(res)
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
    };

    //重载
    var active = {
        reload: function () {
            table.reload('layui_table_id', {
                page: {
                    curr: 1 //重新从第 1 页开始
                }
                , where: {
                    name: $('#name').val()//姓名
                    , age: $('#age').val()//年龄
                    , gender: $('#gender').val()// 性别
                    , email: $('#email').val() // 邮箱
                    , province: $('#province').val() //身份
                    , city: $('#cigy').val() //城市
                }
            });
        }
    };

    //查询
    layui.form.on('submit(cx)', function (obj) {
        var name = $("#sear1").val();
        chaxun(name);
    });

    //重置
    $("#btn_reset_c").click(function () {
        $("#sear1").val("");
    });

    //添加
    table.on('toolbar(dataTable)', function (obj) {
        layer.closeAll();
        switch (obj.event) {
            case 'add':
                // 弹出框
                parent.layer.open({
                    type: 2,
                    title: "添加",
                    content: '/person/addUI',
                    area: ['554px', '469px'],
                    btn: ['确定', '取消'],
                    resize: false,
                    yes:function (index,layero) {
                        var submit = layero.find('iframe').contents().find("#layuiadmin-app-form-submit");
                        submit.trigger('click');
                    },
                    end:function () {
                        active.reload();
                    }
                });
                break;
        }
    });

    //编辑、删除
    table.on('tool(dataTable)', function (obj) {
        layer.closeAll();
        var data = obj.data;
        switch (obj.event) {
            case 'edit':
                // 弹出框
                parent.layer.open({
                    type: 2,
                    title: "编辑",
                    content: ['/person/editUI?id=' + data.id, 'no'],
                    area: ['554px', '469px'],
                    btn: ['确定', '取消'],
                    resize: false,
                    yes:function (index,layero) {
                        var submit = layero.find('iframe').contents().find("#layuiadmin-app-form-submit");
                        submit.trigger('click');
                    },
                    end:function () {
                        active.reload();
                    }
                });
                break;
            case 'del':
                parent.layer.confirm('是否确认删除？', {resize: false}, function (index) {
                    var df = {'id': data.id}
                    $.post("/person/del", df, function (res) {
                        if (res == 1) {
                            parent.layer.closeAll();
                            active.reload();
                            layer.msg('删除成功', {time: 3000, icon: 6});
                            return true;
                        } else {
                            parent.layer.closeAll();
                            active.reload();
                            layer.alert("删除失败", {time: 3000, icon: 5});
                            return false;
                        }
                    });
                });
                break;
        }
    });
});