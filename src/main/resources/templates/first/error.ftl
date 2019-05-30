<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>出错了</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="${basePath}/iias/layui//layui/css/layui.css" media="all">
    <link rel="stylesheet" href="${basePath}/iias/layui//style/admin.css" media="all">
</head>
<body>


<div class="layui-fluid">
    <div class="layadmin-tips">
        <i class="layui-icon" face>&#xe664;</i>

        <div class="layui-text" style="font-size: 20px;">
            <a href="javascript:top.location.href = '/login';">登陆已过期, 点此重新登陆</a>
        </div>

    </div>
</div>


<script src="${basePath}/iias/layui//layui/layui.js"></script>
<script>
    layui.config({
        base: '${basePath}/iias/layui/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index']);
</script>
</body>
</html>