layui.use(['form', 'jquery'], function () {
    var $ = layui.jquery,
        form = layui.form;

    getProvince();
    //获取省份
    function getProvince(){
        $.ajax({
            url:"/person/getProvince",
            type:"get",
            dataType:"json",
            success:function (result) {
                alert(result);
                var list = result;
                var province = document.getElementById("province");
                for(var p in list){
                    var option = document.createElement("option");
                    option.setAttribute("value", p);
                    option.innerText = list[p];
                    province.appendChild(option);
                    form.render("select");
                }
            }
        });
    }

    form.on("submit(layuiadmin-app-form-submit)", function (data) {

        var field = data.field

        console.log(field.toString())

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
