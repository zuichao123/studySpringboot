layui.use(['form', 'jquery','layer'], function () {
    var $ = layui.jquery,
        layer = layui.layer,
        form = layui.form;

    getProvince();
    //获取省份
    function getProvince(){
        $.ajax({
            url:"/person/getProvince",
            type:"get",
            dataType:"json",
            success:function (result) {
                var list = result; //返回的结果
                var province = document.getElementById("province"); //province为select定义的id
                for(var p in list){
                    var option = document.createElement("option"); //创建添加option属性
                    option.setAttribute("value", p); // 给option的value添加值
                    option.innerText = list[p]; // 打印option对应的纯文本
                    province.appendChild(option); // 给select添加option子标签
                    form.render("select"); //刷新select，显示数据
                }
            }
        });
    }

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
