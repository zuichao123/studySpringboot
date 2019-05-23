<div class="layui-header">
    <!-- 头部区域 -->
    <ul class="layui-nav layui-layout-left"   lay-filter="layui-layout-left">
<#--        <li class="layui-nav-item layadmin-flexible" lay-unselect  >-->
<#--            <a  layadmin-event="flexible" title="侧边伸缩">-->
<#--                <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>-->
<#--            </a>-->
<#--        </li>-->
        <li class="layui-nav-item" lay-unselect>
            <a  layadmin-event="refresh" title="刷新">
                <i class="layui-icon layui-icon-refresh-3"></i>
            </a>
        </li>
        <#--<li class="layui-nav-item layui-hide-xs" lay-unselect>-->
            <#--<input type="text" placeholder="搜索..." autocomplete="off" class="layui-input layui-input-search" layadmin-event="serach" lay-action="template/search.html?keywords=">-->
        <#--</li>-->
    </ul>
    <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
        <#--<li class="layui-nav-item layui-hide-xs" lay-unselect>-->
            <#--<a href="javascript:;" layadmin-event="theme">-->
                <#--<i class="layui-icon layui-icon-theme"></i>-->
            <#--</a>-->
        <#--</li>-->
        <#--<li class="layui-nav-item layui-hide-xs" lay-unselect>-->
            <#--<a href="javascript:;" layadmin-event="fullscreen">-->
                <#--<i class="layui-icon layui-icon-screen-full"></i>-->
            <#--</a>-->
        <#--</li>-->
        <li class="layui-nav-item  "    id="download"   lay-unselect  style="font-size: 14px; cursor: pointer;">
            <a   >
                <cite class="layui-icon layui-icon-download-circle" style="font-size: 14px;">下载</cite>
            </a>
            <dl class="layui-nav-child">
                <dd style="text-align: center;"><a href="${basePath}/iias/driver/iris/210_E30.zip">虹膜识别仪驱动</a></dd>
                <dd style="text-align: center;"><a href="${basePath}/iias/driver/card/card.zip">身份证读卡器驱动</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item" lay-unselect  style="font-size: 14px;cursor: pointer;">
            <a     style="display: inline-block;width: 80px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap; text-align: center;">
                <cite>${pcSystem.stm_name}</cite>
            </a>
            <dl class="layui-nav-child">
                <#--<dd><a lay-href="set/user/info.html">基本资料</a></dd>-->
                <dd style="text-align: center;"><a href="#" id="editPassword">修改密码</a></dd>
                <#--<hr>-->
                <dd style="text-align: center;"><a href="/loginOut">退出</a></dd>
            </dl>
        </li>

        <#--<li class="layui-nav-item layui-hide-xs" lay-unselect>-->
            <#--<a href="javascript:;" layadmin-event=""></a>-->
        <#--</li>-->
        <#--<li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-unselect>-->
            <#--<a href="javascript:;" layadmin-event="more"><i class="layui-icon layui-icon-more-vertical"></i></a>-->
        <#--</li>-->
    </ul>
</div>

