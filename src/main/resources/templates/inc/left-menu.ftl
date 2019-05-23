<!-- 侧边菜单 -->
<div class="layui-side layui-side-menu">
    <div class="layui-side-scroll">
        <div class="layui-logo">
            <span><strong>虹膜身份核查系统</strong></span>
        </div>

        <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu"
            lay-filter="layadmin-system-side-menu">

            <li data-name="get" class="layui-nav-item layui-this">
                <a  lay-href="/home" lay-tips="主页" lay-direction="2">
                    <i class="layui-icon layui-icon-home"></i>
                    <cite>主页</cite>
                </a>
            </li>
            <#if (pcSystem.menu)?? && (pcSystem.menu ?index_of(",11,") != -1 || pcSystem.menu ?index_of(",12,") != -1 )>
                <li data-name="cjsb" class="layui-nav-item layui-nav-itemed" id="cjsb">
                    <a  lay-tips="采集识别" lay-direction="2">
                        <i class="layui-icon layui-icon-search"></i>
                        <cite>采集识别</cite>
                    </a>

                    <#if pcSystem.menu ?index_of(",11,") != -1>
                        <dl class="layui-nav-child" id="hmcj">
                            <dd data-name="cjsb-hmcj">
                                <a lay-href="/gather/gatherPage">虹膜采集</a>
                            </dd>
                        </dl>
                    </#if>
                    <#if pcSystem.menu ?index_of(",12,") != -1>
                        <dl class="layui-nav-child" id="hmsb">
                            <dd data-name="cjsb-hmsb">
                                <a lay-href="/identify/identiryUI">虹膜识别</a>
                            </dd>
                        </dl>
                    </#if>
                    <#--<dd data-name="cjsb-lxsujsc">-->
                    <#--<a lay-href="">离线数据上传</a>-->
                    <#--</dd>-->
                </li>
            </#if>

            <#if (pcSystem.menu)?? && (pcSystem.menu ?index_of(",21,") != -1 || pcSystem.menu ?index_of(",22,") != -1 || pcSystem.menu ?index_of(",23,") != -1  || pcSystem.menu ?index_of(",24,") != -1 )>
                <li data-name="cjtj" class="layui-nav-item" id="cjtj">
                    <a  lay-tips="采集数据管理">
                        <i class="layui-icon layui-icon-chart-screen"></i>
                        <cite>采集数据管理</cite>
                    </a>
                    <#if pcSystem.menu ?index_of(",21,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/gather_record/gatherRecordList">采集记录</a>
                            </dd>
                        </dl>
                    </#if>
                    <#if pcSystem.menu ?index_of(",22,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/gather_record/time">采集量统计(按时间)</a>
                            </dd>
                        </dl>
                    </#if>
                    <#if pcSystem.menu ?index_of(",23,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/gather_record/cjr">采集量统计(按操作人)</a>
                            </dd>
                        </dl>
                    </#if>
                    <#if pcSystem.menu ?index_of(",24,") != -1>
                    <#--<dl class="layui-nav-child">-->
                    <#--<dd data-name="console">-->
                    <#--<a lay-href="/cjcxtj/acjrtj">统计demo</a>-->
                    <#--</dd>-->
                    <#--</dl>-->
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/gather_record/batchList">批量查询</a>
                            </dd>
                        </dl>
                    </#if>

<#--                    <dl class="layui-nav-child">-->
<#--                        <dd data-name="console">-->
<#--                            <a lay-href="/gather_record/cjl">采集量统计</a>-->
<#--                        </dd>-->
<#--                    </dl>-->
                </li>
            </#if>

            <#if (pcSystem.menu)?? && (pcSystem.menu ?index_of(",31,") != -1 || pcSystem.menu ?index_of(",32,") != -1 || pcSystem.menu ?index_of(",33,") != -1  || pcSystem.menu ?index_of(",34,") != -1 || pcSystem.menu ?index_of(",35,") != -1 )>
                <li data-name="sbtj" class="layui-nav-item" id="sbtj">
                    <a  lay-tips="识别数据管理" lay-direction="2">
                        <i class="layui-icon layui-icon-chart"></i>
                        <cite>识别数据管理</cite>
                    </a>
                    <#if pcSystem.menu ?index_of(",31,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/sbcxtj/sbjlcx">识别记录</a>
                            </dd>
                        </dl>
                    </#if>
                    <#if pcSystem.menu ?index_of(",32,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/identify_record/time">识别量统计(按时间)</a>
                            </dd>
                        </dl>
                    </#if>
                    <#if pcSystem.menu ?index_of(",33,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/identify_record/sbr">识别量统计(按操作人)</a>
                            </dd>
                        </dl>
                    </#if>
                    <#if pcSystem.menu ?index_of(",34,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/warning/bjxxcx">报警信息</a>
                            </dd>
                        </dl>
                    </#if>
<#--                    <dl class="layui-nav-child">-->
<#--                        <dd data-name="console">-->
<#--                            <a lay-href="/identify_record/sbl">识别量统计</a>-->
<#--                        </dd>-->
<#--                    </dl>-->
                </li>
            </#if>

            <#if (pcSystem.menu)?? && pcSystem.menu ?index_of(",41,") != -1>
                <li data-name="xxwh" class="layui-nav-item" id="xxwh">
                    <a  lay-tips="基础信息管理" lay-direction="2">
                        <i class="layui-icon layui-icon-user"></i>
                        <cite>基础信息管理</cite>
                    </a>
                    <dl class="layui-nav-child">
                        <dd data-name="console">
                            <a lay-href="/information/personView">人员信息维护</a>
                        </dd>
                    </dl>
                </li>
            </#if>

            <#if (pcSystem.menu)?? && (pcSystem.menu ?index_of(",51,") != -1 || pcSystem.menu ?index_of(",52,") != -1 || pcSystem.menu ?index_of(",53,") != -1 )>
                <li data-name="xtsz" class="layui-nav-item" id="xtsz">
                    <a  lay-tips="系统设置" lay-direction="2">
                        <i class="layui-icon layui-icon-set"></i>
                        <cite>系统设置</cite>
                    </a>
                    <#if pcSystem.menu ?index_of(",51,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/cjr/zhgl">操作员管理</a>
                            </dd>
                        </dl>
                    </#if>
                    <#if pcSystem.menu ?index_of(",52,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/setting/org">组织机构管理</a>
                            </dd>
                        </dl>
                    </#if>
                    <#if pcSystem.menu ?index_of(",53,") != -1>
                        <dl class="layui-nav-child">
                            <dd data-name="console">
                                <a lay-href="/rmt/rmt">远程调用管理</a>
                            </dd>
                        </dl>
                    </#if>

                    <#--<dl class="layui-nav-child">
                        <dd data-name="console">
                            <a lay-href="/power/querySysUserPage">权限设置</a>
                        </dd>
                    </dl>-->
                    <#--<dl class="layui-nav-child">-->
                    <#--<dd data-name="console">-->
                    <#--<a lay-href="/xxwh/ryxxwh">人员信息维护</a>-->
                    <#--</dd>-->
                    <#--</dl>-->
                </li>
            </#if>
        </ul>
    </div>


</div>

<script type="text/javascript" src="${basePath}/iias/script/inc/leftMenu.js?time=${.now}"></script>
