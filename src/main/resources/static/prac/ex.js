layui.define(['element', 'jquery', 'layer'], function (exports) {
    var el = layui.element,
        $ = layui.jquery,
        layer = layui.layer;
    var active = {
        //弹出alert框
        fn1: function () {
            layer.alert("33333333333333")
        },

        //
        fn2:function () {
          layer.open({
             title:'在线调试'
             ,content:'填写任意的layer代码'
          });
        }

    }

    exports("ex", active)
});