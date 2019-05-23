<!-- 页面标签 -->
<div class="layadmin-pagetabs" id="LAY_app_tabs"">
    <div class="layui-icon layadmin-tabs-control layui-icon-prev" layadmin-event="leftPage"></div>
    <div class="layui-icon layadmin-tabs-control layui-icon-next" layadmin-event="rightPage"  style="right: 0px" ></div>
<#--    <div class="layui-icon layadmin-tabs-control layui-icon-down">-->
<#--        <ul class="layui-nav layadmin-tabs-select" lay-filter="layadmin-pagetabs-nav">-->
<#--            <li class="layui-nav-item" lay-unselect>-->
<#--                <a href="#"></a>-->
<#--                <dl class="layui-nav-child layui-anim-fadein">-->
<#--                    <dd layadmin-event="closeThisTabs"><a href="#">关闭当前标签页</a></dd>-->
<#--                    <dd layadmin-event="closeOtherTabs"><a href="#">关闭其它标签页</a></dd>-->
<#--                    <dd layadmin-event="closeAllTabs"><a href="#">关闭全部标签页</a></dd>-->
<#--                </dl>-->
<#--            </li>-->
<#--        </ul>-->
<#--    </div>-->
    <div class="layui-tab" lay-unauto lay-allowClose="true" lay-filter="layadmin-layout-tabs">
        <ul class="layui-tab-title" id="LAY_app_tabsheader">
            <li lay-id="/home" lay-attr="/home" class="layui-this"><i class="layui-icon layui-icon-home"></i></li>
        </ul>
    </div>
</div>
<div class="layui-body" id="LAY_app_body">
    <div class="layadmin-tabsbody-item layui-show">
        <iframe src="/home" frameborder="0" class="layadmin-iframe"></iframe>
    </div>
</div>
<#--<script>-->
<#--    //删除这里js就可以不全刷新-->
<#--    layui.use(['index', 'element', 'echarts', 'laydate', 'form'], function() {-->
<#--        var $ = layui.$, element = layui.element, echarts = layui.echarts,-->
<#--            carousel = layui.carousel, laydate = layui.laydate, form = layui.form;-->

<#--        $("#11").on('click', function () {-->
<#--/*          var ELEM_IFRAME = '.layadmin-iframe'-->
<#--                , length = $('.' + TABS_BODY).length;-->

<#--            if (admin.tabsPage.index >= length) {-->
<#--                admin.tabsPage.index = length - 1;-->
<#--            }-->

<#--            var iframe = admin.tabsBody(admin.tabsPage.index).find(ELEM_IFRAME);-->
<#--              iframe[0].contentWindow.location.reload(true);*/-->
<#--      window.location.href = window.location.href;-->

<#--        });-->
<#--    })-->
<#--</script>-->