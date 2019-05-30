<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>SpringBoot - Layui - 练习</title>
    <link rel="stylesheet" href="static/layui/css/layui.css">
    <style>
        .first-page-iframe {
            background-image: url(/static/img/cronaldo7.png);
            background-repeat: no-repeat;
            background-size: cover;
            height: 100%;
        }
    </style>
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
                    <#--<dd style="text-align: center;"><a href="#">基本资料</a></dd>-->
                    <dd style="text-align: center;"><a href="#" id="editPwd">修改密码</a></dd>
                    <dd style="text-align: center;"><a href="/">退出</a></dd>
                </dl>
            </li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
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
        <div class="first-page-iframe" style="padding: 15px;">

            <iframe src="" frameborder="0" scrolling="no" id="test2" onload="this.height=100" width=100%></iframe>

        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        <div style="text-align: center; margin-top: 5px;"> Copyright © 北京中科虹霸科技有限公司, All Rights Reserved.</div>
    </div>
</div>

<script src="static/layui/layui.js"></script>
<script src="/static/scripts/myjs/firstJs/first.js"></script>

<script type="text/javascript">
    //JavaScript代码区域
    layui.use(['element', 'jquery'], function () {
        var element = layui.element,
            $ = layui.jquery;
        element.on('nav(test)', function (elem) {
            var src = elem.attr("srcs");
            $('iframe').attr("src", src);
        });
    });

    function reinitIframe() {
        var iframe = document.getElementById("test2");
        try {
            var bHeight = iframe.contentWindow.document.body.scrollHeight;
            var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
            var height = Math.max(bHeight, dHeight);
            iframe.height = height;
            //console.log(height);
        } catch (ex) {

        }
    }
    window.setInterval("reinitIframe()", 200);//隔两秒自动执行一次
</script>

</body>
</html>