<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
      content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
<link rel="stylesheet" href="/static/layui/css/layui.css" media="all">
<link rel="stylesheet" href="/static/mycss/admin.css" media="all">

<script src="/static/layui/layui.js"></script>

<#--<link rel="stylesheet" href="/static/css/theme.css" media="all">-->
<#--<script src="/static/scripts/html5shiv/r29/html5.min.js"></script>-->
<#--<script src="/static/scripts/respond.js/1.4.2/respond.min.js"></script>-->
<#--屏蔽backspace回格键退出-->
<script type="text/javascript" src="/static/scripts/inc/backspace.js?time=${.now}"></script>

<script>
    var l= layui.config({
        base: '/static/layui/', //静态资源所在路径
        version: new Date().getTime()
    }).extend({
        index: 'lib/index' //主入口模块
    });
    l.use("index",function () {
        var element = layui.element
            ,$ = layui.jquery;
        //监听 tab 组件切换，同步 index
        element.on('tab(layadmin-layout-tabs)', function(data){
            var body = $(window.frames[data.index].document.body);
            // 禁用快捷键
            body.on("keydown",function(){
                //屏蔽退格删除键
                var code = event.keyCode|| event.which;
                if(code == 8){
                    return false;
                }
            });
        });
    });

    //     , admin = layui.admin
    //     , element = layui.element
    //     , layer = layui.layer
    //     , form = layui.form;

</script>
<style>
    .layui-form-label{
        width: 130px;
    }
    .layui-input-block {
        margin-left: 161px;
    }
    .layui-form-label > span{
        font-weight: 650;
        color: #FF0000;
    }
    .layui-form-label{
        color: #797979;
    }
    .layui-card-header{
        font-size: 13px;
        color: #333333;
        font-weight: 650;
    }
    /*据说支持IE10以上*/
    /*::-ms-clear{display: none;} 隐藏输入框小X*/
    /*::-ms-reveal{display: none;} 隐藏输入框查看密码眼睛*/
    input::-ms-clear{
        display: none;
    }
    input::-ms-reveal{
        display: none;
    }
</style>

