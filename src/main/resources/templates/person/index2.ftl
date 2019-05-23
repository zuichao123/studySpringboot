<!DOCTYPE html>
<html>
<head>
    <title>xxxx系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" charset="utf-8"/>

    <!-- jquery -->
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

    <!--layer ui-->
    <link rel="stylesheet" href="/static/layui/css/layui.css">
    <script type="text/javascript" src="/static/layui/layui.js"></script>

</head>
<body>

<div style="margin-top: 17px; margin-left: 0px">
    <span>&nbsp;搜索：</span><input type="text" style="height: 27px;width: 220px;" id="sear1" placeholder="请输入姓名"/>
</div>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="add">添加</button>
    </div>
</script>
<script type="text/html" id="rmt-table-toolbar-bar">
    <a class="layui-btn layui-btn-xs" lay-event="edit" style="background-color: #2F4056;">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<table class="layui-table" id="layui_table_id" lay-filter="dataTable" ></table>
<#--<di class="layui-card-body">-->

<script src="/static/scripts/myjs/indexPage.js"></script>
</body>
</html>