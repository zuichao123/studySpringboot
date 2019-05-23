layui.config({
    base:"static/layui/myjs/"
}).extend({
    ex:"ex"
})

layui.use(["layer","ex","element"],function () {
    var layer = layui.layer,
        el = layui.element,
        ex = layui.ex;
    //弹出提示框
    layer.msg("adsfasdfasdf",{time:5000})

    //引用自己扩展的ex.js中的函数实现，layui.alert弹出
    ex.fn1()
    ex.fn2()
})