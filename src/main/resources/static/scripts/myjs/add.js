// 初始化表单
layui.use(['form'], function () {
    var $ = layui.$
        , form = layui.form;
    form.render()
    isIE()
    // 点击请选择， 弹出控件
    $(".inputSpan").on('click', function () {
        var thet = $(this)
        var spanParpent = thet.parent()
        spanParpent.find('input').trigger("focus")
        spanParpent.find('input').blur(function () {
            if($(this).val() == ""){
                thet.css("display","block")
            }
            if($(this).val() != ""){
                thet.css("display","none")
            }
        })
    });

    $(".textareaSpan").on("click",function () {
        var thet = $(this)
        var spanParpents = thet.parent()
        spanParpents.find('textarea').trigger("focus")
        spanParpents.find('textarea').blur(function () {
            if($(this).val() == ""){
                thet.css("display","block")
            }
            if($(this).val() != ""){
                thet.css("display","none")
            }
        })
    })
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
    //ie下面兼容提示
    function isIE() {
        var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
        var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1; //判断是否IE<11浏览器
        var isEdge = userAgent.indexOf("Edge") > -1 && !isIE; //判断是否IE的Edge浏览器
        var isIE11 = userAgent.indexOf('Trident') > -1 && userAgent.indexOf("rv:11.0") > -1;
        if(isIE) {
            var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
            reIE.test(userAgent);
            var fIEVersion = parseFloat(RegExp["$1"]);
            if(fIEVersion == 9 || fIEVersion == 8) {
                if( !('placeholder' in document.createElement('input')) ){

                    $('input[placeholder],textarea[placeholder]').each(function(i,item){
                        $(item).parents(".layui-input-block").find(".inputSpan").css("display","block")
                        var that = $(this)
                        that.focus(function(){
                            $(that).parents(".layui-input-block").find(".inputSpan").css("display","none")
                        })
                            .blur(function(){
                                if(that.val()==""){
                                    $(that).parents(".layui-input-block").find(".inputSpan").css("display","block")
                                }
                                if(that.val() !==""){
                                    $(that).parents(".layui-input-block").find(".inputSpan").css("display","none")
                                }
                            });
                        that.on('change',function () {
                            if(that.val()==""){
                                $(that).parents(".layui-input-block").find(".inputSpan").css("display","block")
                            }
                            if(that.val() !==""){
                                $(that).parents(".layui-input-block").find(".inputSpan").css("display","none")
                            }
                        })

                    });
                }
            }
        }
    }
});