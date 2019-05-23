<!DOCTYPE html>
<html>
<head>
    <title>编辑人员</title>
    <#include "../inc/meta.ftl">
    <style>
        .layui-form-item .layui-form-checkbox[lay-skin=primary]{
            width:120px;
        }

        .layui-input{
            width: 300px;
        }

    </style>
</head>
<body style="background:#fff; height: 368px;">
<div class="layui-form" lay-filter="rmt-operate-form" id="rmt-operate-form" style="padding: 20px 74px 0 0;margin-left: 20px">
    <input type="hidden" value="${person.id}" id="id" name="id">
    <div class="layui-form-item">
        <label class="layui-form-label"><span> * </span>姓名：</label>
        <div class="layui-input-block">
            <input type="text" name="name"  id="name" value="${person.name!}" lay-verify="required" placeholder="请输入姓名" autocomplete="off" maxlength="30" class="layui-input" minlength="6" maxlength="20">
        </div>
    </div>

    <div class="layui-form-item" >
        <label class="layui-form-label"><span> * </span>年龄：</label>
        <div class="layui-input-block">
            <input type="text" name="age" id="age" value="${person.age!}"  lay-verify="required" placeholder="请输入年龄" maxlength="30" autocomplete="off" class="layui-input" minlength="6" maxlength="20">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label"><span> * </span>性别：</label>
        <div class="layui-input-block">
            <input type="text" name="gender" id="gender" value="${person.gender!}" lay-verify="required" placeholder="请输入性别" autocomplete="off" maxlength="30" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label"><span> * </span>邮箱：</label>
        <div class="layui-input-block">
            <input type="text" name="email" value="${person.email!}" id="email" lay-verify="required"  placeholder="请输入邮箱" autocomplete="off"  class="layui-input" maxlength="30" maxlength="50">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">住址：</label>
        <div class="layui-input-block">
            <textarea name="city" id="city" value="${person.city!}" placeholder="请输入住址" class="layui-textarea" style="width: 300px" maxlength="18" onpropertychange="if(value.length>18) value=value.substr(0,18)" autocomplete="off">${person.city!}</textarea>
        </div>
    </div>

    <div class="layui-form-item layui-hide">
        <button class="layui-btn" lay-submit lay-filter="rmt-submit" id="rmt-submit">提交</button>
    </div>

</div>
<script type="text/javascript" src="/static/scripts/myjs/edit.js?time=${.now}"></script>

<#--屏蔽backspace回格键退出-->
<script type="text/javascript" src="/static/scripts/inc/backspace.js?time=${.now}"></script>
</body>
</html>
