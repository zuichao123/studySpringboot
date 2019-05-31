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
<div class="layui-form" lay-filter="layuiadmin-app-form-list" id="layuiadmin-app-form-list" style="padding: 20px 30px 0 0;">
    <div class="layui-form" lay-filter="rmt-operate-form" id="rmt-operate-form"
         style="padding: 20px 74px 0 0;margin-left: 20px  text-align: center">
        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>姓名：</label>
            <div class="layui-input-block">
                <span class="inputSpan">请输入姓名</span>
                <input type="text" name="name" id="name" lay-verify="required" placeholder="请输入姓名" autocomplete="off"
                       maxlength="30" class="layui-input" minlength="6" maxlength="20">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>年龄：</label>
            <div class="layui-input-block">
                <span class="inputSpan">请输入年龄</span>
                <input type="text" name="age" id="age" lay-verify="required" placeholder="请输入年龄" maxlength="30"
                       autocomplete="off" class="layui-input" minlength="6" maxlength="20">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>性别：</label>
            <div class="layui-input-block">
                <span class="inputSpan">请输入性别</span>
                <input type="text" name="gender" id="gender" lay-verify="required" placeholder="请输入性别"
                       autocomplete="off" maxlength="30" class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>邮箱：</label>
            <div class="layui-input-block">
                <span class="inputSpan">请输入邮箱</span>
                <input type="text" name="email" id="email" lay-verify="required" placeholder="请输入邮箱" autocomplete="off"
                       class="layui-input" maxlength="30" maxlength="50">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">住址：</label>
            <div class="layui-input-block">
                <span class="inputSpan  textareaSpan">请输入住址</span>
                <textarea name="city" id="city" placeholder="请输入住址" class="layui-textarea" style="width: 300px; resize:none;"
                          onpropertychange="if(value.length>100) value=value.substr(0,100)" maxlength="100"
                          autocomplete="off"></textarea>
            </div>
        </div>
    </div>
    <div class="layui-form-item layui-hide">
        <input type="button" lay-submit lay-filter="layuiadmin-app-form-submit" id="layuiadmin-app-form-submit" value="提交">
    </div>
</div>

<script type="text/javascript" src="/static/scripts/myjs/personJs/addPerson.js"></script>
</body>
</html>
