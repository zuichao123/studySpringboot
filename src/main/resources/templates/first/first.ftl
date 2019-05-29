<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>SpringBoot - Layui - 练习</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
</head>
<body class="layui-layout-body">

<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">Test Engineer</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <#--<ul class="layui-nav layui-layout-left">-->
            <#--<li class="layui-nav-item"><a href="/index">控制台</a></li>-->
            <#--<li class="layui-nav-item"><a href="">商品管理</a></li>-->
            <#--<li class="layui-nav-item"><a href="">用户</a></li>-->
            <#--<li class="layui-nav-item">-->
                <#--<a href="javascript:;">其它系统</a>-->
                <#--<dl class="layui-nav-child">-->
                    <#--<dd><a href="">邮件管理</a></dd>-->
                    <#--<dd><a href="">消息管理</a></dd>-->
                    <#--<dd><a href="">授权管理</a></dd>-->
                <#--</dl>-->
            <#--</li>-->
        <#--</ul>-->
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="/static/img/cr7_logo.png" class="layui-nav-img">
                    ${message}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="#">修改密码</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="/">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">人员管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="#" srcs="/all">所有人员</a></dd>
                        <#--<dd><a href="">超链接</a></dd>-->
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">系统管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="#" srcs="/allAdmin">操作员管理</a></dd>
                        <#--<dd><a href="">超链接</a></dd>-->
                    </dl>
                </li>
                <#--<li class="layui-nav-item"><a href="">云市场</a></li>-->
                <#--<li class="layui-nav-item"><a href="">发布商品</a></li>-->
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <iframe src="" style="width: 1500px;height: 1000px"></iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="static/layui/layui.js"></script>

<script>
    //JavaScript代码区域
    layui.use(['element','jquery'], function(){
        var element = layui.element,
        $ = layui.jquery;
        element.on('nav(test)',function (elem) {
            var src = elem.attr("srcs");
            $('iframe').attr("src",src);
        });

    });
</script>
</body>
</html>