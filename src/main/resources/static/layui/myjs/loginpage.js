function f() {
    var xmlhttp;
    function loadCheck(){
        var id=document.getElementById('id').value;
        var password=document.getElementById('password').value;
        var data = {"id":id,"password":password};
        if(id.length==0||password.length==0){
            alert("账号或密码为空");
            return;
        }
        if (window.XMLHttpRequest) {
            xmlhttp=new XMLHttpRequest();
        }else{
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = getResult;
        xmlhttp.open("POST","judge",true);
        xmlhttp.setRequestHeader("Content-type","application/json");
        xmlhttp.send(JSON.stringify(data));
    }

    function getResult(){
        if (xmlhttp.readyState == 4) {
            //document.getElementById("").innerHTML=xmlhttp.responseText;
            if(xmlhttp.status == 200){
                var rec=xmlhttp.responseText;

                if(rec == 0){
                    document.getElementById("insert").innerHTML="账号不存在！";
                }else if(rec == -1){
                    document.getElementById("insert").innerHTML="账号或密码错误！";
                }else{
                    window.location.href = "index";
                }
            }else{
                alert("连接失败");
            }
        }
    }
}

f()

function f1() {
    layui.config({
        base: '/static/layui/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'user'], function () {
        var $ = layui.$
            , form = layui.form

        form.render();

        //提交
        form.on('submit(LAY-user-login-submit)', function (obj) {
            alert("99999999");
            $.ajax({
                url: "judge",
                type: "post",
                data: obj.field,
                contentType: "application/json",
                success: function (res) {
                    var jsonObj = eval("(" + res + ")");

                    alert(jsonObj.code)

                    if (jsonObj.code == -1) {
                        layer.msg('用户名或密码错误', {
                            offset: '15px'
                            , icon: 2
                            , time: 1000
                            , offset: 'auto'
                        });
                    } else if(jsonObj.code == 0){
                        layer.msg('用户不存在', {
                            offset: '15px'
                            , icon: 2
                            , time: 1000
                            , offset: 'auto'
                        });
                    } else {
                        alert("---------00000");
                        //登入成功的提示与跳转
                        layer.msg('登入成功', {
                            offset: '15px'
                            , icon: 1
                            , time: 1000
                            , offset: 'auto'
                        }, function () {
                            location.href = '/'; //后台主页
                        });
                    }
                }
            });
        });
    });
}