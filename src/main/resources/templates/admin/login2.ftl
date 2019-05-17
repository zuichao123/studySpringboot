<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>虹膜身份认证系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="/static/layui/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/static/layui/style/admin.css" media="all">
    <link rel="stylesheet" href="/static/layui/style/login.css" media="all">
    <style>
        body {
            background-image: url(/static/img/bg_login.png);
            background-repeat: no-repeat;
            background-size: cover;
        }

        .login-wrapper, body, html {
            height: 100%
        }

        .login-wrapper {
            overflow: auto;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
        }

        .login-body {
            padding: 10px 10px 40px 10px;
        }

        .login-body > .layui-card {
            max-width: 360px;
            margin: 0 auto;
        }

        .login-body .layui-card-header {
            font-weight: 700;
            font-size: 15px;
        }

        .login-body .layui-form-pane .layui-form-label {
            width: 48px;
        }

        .login-body .layui-form-pane .layui-input-block {
            margin-left: 48px;
        }

        .login-body .login-captcha {
            width: 100%;
            cursor: pointer;
        }

        .login-body .login-other > * {
            display: inline-block;
            vertical-align: middle;
            margin-right: 10px;
            font-size: 14px;
        }

        .login-body .login-other .layui-icon {
            position: relative;
            top: 2px;
            font-size: 26px;
        }

        .login-body .login-other a:hover {
            opacity: .8;
        }

        .login-footer span {
            padding: 0 5px
        }

        .login-footer a {
            padding: 0 5px;
            color: rgba(255, 255, 255, 0.7) !important;
        }

        .login-footer a:hover {
            color: rgba(255, 255, 255, 0.4) !important;
        }

        /** 澶撮儴鏍峰紡 */
        .login-header {
            font-family: Myriad Pro, Helvetica Neue, Arial, Helvetica, sans-serif;
            font-size: 20px;
            font-weight: 600;
            color: rgba(255, 255, 255, 0.85) !important;
            padding: 80px;
        }

        .login-header img {
            height: 40px;
        }

        /** 绉诲姩璁惧鏍峰紡 */
        @media screen and (min-height: 590px) {
            .login-footer {
                position: absolute;
                bottom: 0;
                width: 100%;
            }
        }

        @media screen and (min-height: 670px) {
            .login-body {
                padding: 110px 10px 40px 10px;
            }
        }
        .layui-form-item {
            margin-bottom: 25px;
            clear: both;
            *zoom: 1;
        }

        .layadmin-user-login-header h2 {
            margin-bottom: 10px;
            font-weight: 300;
            font-size: 24px;
            color: #000;
        }


        @media screen and (min-height: 670px) {
            .login-body {
                padding: 10px 10px 40px 10px;
            }
        }


    </style>
</head>
<script src="/static/layui/layui/layui.js"></script>
<script src="/static/layui/myjs/loginpage.js"></script>
<body>
<div class="login-wrapper">

    <div class="login-header">

    </div>

    <div class=" login-body">
        <div class="layui-card">
            <div class="layui-card-header">
                用户登录
            </div>
            <div  class="layui-card-body layui-form layui-form-pane">

                <div class="layui-form-item">
                    <label class="layadmin-user-login-header">
                        <h2>XXXXX系统</h2>
                    </label>
                </div>

                <div class="layui-form-item">
                    <label class="layui-form-label"><i class="layui-icon layui-icon-username"></i></label>
                    <div class="layui-input-block">
                        <input id="id" name="account" type="text" class="layui-input" placeholder="用户名" lay-verType="tips"
                               lay-verify="required"/>
                    </div>
                </div>
                <div class="layui-form-item">
                    <label class="layui-form-label"><i class="layui-icon layui-icon-password"></i></label>
                    <div class="layui-input-block">
                        <input id="password" name="password" type="password" class="layui-input" placeholder="密码"
                               lay-verType="tips" lay-verify="required"/>
                    </div>
                </div>


                <div class="layui-form-item">
                    <button type="button" class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit" onclick="f()">登 入</button>
                </div>

            </div>
        </div>
    </div>

</div>

</body>
</html>