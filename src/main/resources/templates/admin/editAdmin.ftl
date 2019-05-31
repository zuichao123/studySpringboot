<!DOCTYPE html>
<html>
<head>
    <title>编辑人员</title>
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
<div class="layui-form" lay-filter="layuiadmin-app-form-list" id="layuiadmin-app-form-list"
     style="padding: 20px 30px 0 0;">
    <div class="layui-form" lay-filter="rmt-operate-form" id="rmt-operate-form"
         style="padding: 20px 74px 0 0;margin-left: 20px  text-align: center">
        <input type="hidden" value="${admin.id}" id="id" name="id">
        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>账号：</label>
            <div class="layui-input-block">
                <input type="text" name="name" id="name" value="${admin.name!}" lay-verify="required"
                       placeholder="请输入账号" autocomplete="off" maxlength="30" class="layui-input" minlength="6"
                       maxlength="20">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span> * </span>姓名：</label>
            <div class="layui-input-block">
                <input type="text" name="xingming" id="xingming" value="${admin.xingming!}" lay-verify="required"
                       placeholder="请输入姓名" maxlength="30" autocomplete="off" class="layui-input" minlength="6"
                       maxlength="20">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label"><span></span>备注：</label>
            <div class="layui-input-block">
                <textarea name="beizhu" id="beizhu" value="${admin.beizhu!}" placeholder="请输入备注" class="layui-textarea" style="width: 300px; resize:none;"
                          onpropertychange="if(value.length>100) value=value.substr(0,100)" maxlength="100"
                          autocomplete="off">${admin.beizhu!}</textarea>
            </div>
        </div>
        <div class="layui-form-item layui-hide">
            <input type="button" lay-submit lay-filter="layuiadmin-app-form-submitAdmin"
                   id="layuiadmin-app-form-submitAdmin"
                   value="提交">
        </div>
    </div>
</div>

<script type="text/javascript" src="/static/scripts/myjs/adminJs/editAdmin.js"></script>
</body>
</html>
