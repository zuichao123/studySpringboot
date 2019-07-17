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
    <style type="text/css">
        /*body {*/
            /*background-image: url(/static/img/cr7_logo.png);*/
            /*background-repeat: no-repeat;*/
            /*background-size: cover;*/
            /*height: 100%;*/
        /*}*/
        td{
            text-align: center;
        }
    </style>

</head>
<body>
<form class="layui-form">

    <div style="margin-top: 17px; margin-left: 0px">
        <span>&nbsp;搜索：</span><input type="text" style="height: 27px;width: 220px;" id="sear1" placeholder="请输入姓名"/>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <button class="layui-btn layui-btn-sm" id="component-form-demo1" data-type="reload" type="button" lay-submit lay-filter="cx">查询
        </button>
        <button type="button" id="btn_reset_c" class="layui-btn layui-btn-primary layui-btn-sm" lay-reset >重置
        </button>
    </div>

</form>
<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn  layui-btn-sm" data-type="add" type="submit" lay-event="add">添加</button>
    </div>
</script>
<div class="layui-table">
    <table class="layui-table" id="layui_table_id" lay-filter="dataTable"></table>
</div>
<script type="text/html" id="rmt-table-toolbar-bar">
    <#--style="background-color: #2F4056;"-->
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<#--<di class="layui-card-body">-->

<script src="/static/scripts/myjs/adminJs/allAdmin.js"></script>
</body>
</html>