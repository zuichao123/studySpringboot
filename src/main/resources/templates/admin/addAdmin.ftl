<!DOCTYPE html>
<html>
<head>
    <title>添加人员</title>
    <#include "../inc/meta.ftl">
    <style>
        .layui-form-item .layui-form-checkbox[lay-skin=primary] {
            width: 120px;
        }

        .layui-input {
            width: 300px;
        }

        .inputSpan {
            position: absolute;
            top: 0px;
            left: 10px;
            color: #C2C2C2;
            z-index: 4;
            line-height: 36px;
            display: none;
        }
    </style>
</head>
<body style="background:#fff; height: 368px;">
<div class="layui-form" lay-filter="layuiadmin-app-form-list" id="layuiadmin-app-form-list"
     style="padding: 20px 30px 0 0;">
    <div class="layui-form" lay-filter="rmt-operate-form" id="rmt-operate-form"
         style="padding: 20px 74px 0 0;margin-left: 20px  text-align: center">
        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>账号：</label>
            <div class="layui-input-block">
                <span class="inputSpan">请输入账号</span>
                <input type="text" name="name" id="name" lay-verify="required" placeholder="请输入账号" autocomplete="off"
                       maxlength="30" class="layui-input" minlength="6" maxlength="20">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>密码：</label>
            <div class="layui-input-block">
                <span class="inputSpan">请输入密码</span>
                <input type="text" name="password" id="password" lay-verify="required" placeholder="请输入密码" autocomplete="off"
                       maxlength="30" class="layui-input" minlength="6" maxlength="20">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>姓名：</label>
            <div class="layui-input-block">
                <span class="inputSpan">请输入姓名</span>
                <input type="text" name="xingming" id="xingming" lay-verify="required" placeholder="请输入姓名"
                       maxlength="30"
                       autocomplete="off" class="layui-input" minlength="6" maxlength="20">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">备注：</label>
            <div class="layui-input-block">
                <span class="inputSpan">请输入备注</span>
                <input type="text" name="beizhu" id="beizhu" placeholder="请输入备注"
                       autocomplete="off" maxlength="30" class="layui-input">
            </div>
        </div>

    </div>
    <div class="layui-form-item layui-hide">
        <input type="button" lay-submit lay-filter="layuiadmin-app-form-submitAdmin" id="layuiadmin-app-form-submitAdmin"
               value="提交">
    </div>
</div>

<script type="text/javascript" src="/static/scripts/myjs/adminJs/addAdmin.js"></script>
</body>
</html>
