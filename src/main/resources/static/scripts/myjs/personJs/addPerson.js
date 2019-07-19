layui.use(['form', 'jquery'], function () {
    var $ = layui.jquery,
        form = layui.form;

    getAllProvince();

    //获取省份
    function getAllProvince() {
        $.ajax({
            url: "/person/getProvince",
            type: "get",
            dataType: "json",
            success: function (result) {
                var list = result; //返回的结果
                var province = document.getElementById("province"); //province为select定义的id
                // var html = ""
                // $.each(list,function (i,item) {
                //     html+="<option lay-value="+item+">'+item+'</option>"
                // })
                for (var p in list) {
                    // console.log(p)
                    var option = document.createElement("option"); //创建添加option属性
                    option.setAttribute("value", p); // 给option的value添加值
                    option.innerText = list[p]; // 打印option对应的纯文本
                    province.appendChild(option); // 给select添加option子标签
                    form.render("select"); //刷新select，显示数据
                }
            }
        });
    }
        //
        // form.on('select(province)', function (data) {
        //     var pValue = data.elem[data.elem.selectedIndex].text;
        //     console.log(pValue)
        //     console.log(data.value)
        // });

    form.on("submit(layuiadmin-app-form-submit)", function (data) {
        var field = data.field;
        console.log(field);
        $.post('/person/add', field, function (relObj) {
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
