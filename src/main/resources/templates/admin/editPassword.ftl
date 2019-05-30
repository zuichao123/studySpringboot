<!DOCTYPE html>
<html>
<head>
    <title>修改密码</title>
    <#include "../inc/meta.ftl">
    <style>
        .layui-form-item .layui-form-checkbox[lay-skin=primary] {
            width: 120px;
        }

        .layui-input {
            width: 300px;
        }

    </style>
</head>
<body style="background:#fff; height: 368px;">
<div id="passwordDiv" style="padding: 20px 30px 0 0;">
    <div class="layui-form" lay-filter="password-form" style="padding: 20px 74px 0 0;margin-left: 20px  text-align: center">
        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>原密码：</label>
            <div class="layui-input-block">
                <input type="password" name="oldPassword" id="oldPassword"  maxlength="16"lay-verify="required|oldPassword" placeholder="请输入原密码" autocomplete="off"
                       class="layui-input" oncopy="return false"  oncut="return false" oncontextmenu="return false">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>新密码：</label>
            <div class="layui-input-block">
                <input type="password" name="newPassword" id="newPassword" minlength="8" maxlength="16" lay-verify="required|newPassword" placeholder="请输入新密码" autocomplete="off"
                       class="layui-input" oncopy="return false"  oncut="return false" oncontextmenu="return false">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>确认密码：</label>
            <div class="layui-input-block">
                <input type="password" name="newPassword2" id="newPassword2" minlength="8" maxlength="16" lay-verify="required|newPassword2" placeholder="请确认新密码" autocomplete="off"
                       class="layui-input" oncopy="return false"  oncut="return false" oncontextmenu="return false">
            </div>
        </div>
        <div class="layui-form-item layui-hide">
            <input type="button" lay-submit lay-filter="layuiadmin-app-form-submitAdmin"
                   id="layuiadmin-app-form-submitAdmin"
                   value="提交">
        </div>
    </div>
</div>

<script type="text/javascript" src="/static/scripts/myjs/adminJs/editPassword.js"></script>
</body>
</html>
