// 初始化表单
layui.use(['form'], function () {
    var $ = layui.$
        , form = layui.form;

    // form.on('checkbox(choseM)', function(obj){
    //     var menu = $('#menu').val();
    //     if (obj.elem.checked){
    //         menu += ',' + this.value;
    //         $('#menu').val(menu);
    //     } else{
    //         $('#menu').val(menu.replace(',' + this.value, ''));
    //     }
    // });
    //
    // var reg18 = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
    // var reg15 = /^[1-9]\d{5}\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{2}[0-9Xx]$/;
    // // 验证
    // form.verify({
    //     reqCard: function (value) {
    //         var user_id = value;
    //         if(reg18.test(user_id) === false && reg15.test(user_id) === false) {
    //             return "身份证号码不正确";
    //         }
    //     },
    //     confirmPwd: function (value) {
    //         var user_id = $('#password').val();
    //         if (value != user_id){
    //             return "两次密码输入不一致";
    //         }
    //     }
    // });
});