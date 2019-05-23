
        <div class="layui-body" id="LAY_app_body" style="background: #F2F2F2;" >
            <div class="layadmin-tabsbody-item   layui-show">
            <#--    <div style="height: 100%;position: absolute;width: 100%;">&lt;#&ndash;IIAS TO IRIS TO GO&ndash;&gt;
                    <div style="text-align: center;padding-top:12%;color: #055497;font-size: 45px;font-weight: bold;">欢迎登录虹膜身份认证系统</div>
                    <img src="${basePath}/iias/img/welcome.png" style="width: 100%;position: absolute;bottom: 0;">
                </div>-->
<#--
                <div class="layui-fluid" style="margin-left: 225px;margin-top: 75px;margin-right: 200px">
                    <div class="layui-card">-->
                <div  class="layui-card-body" style="margin-left:20px;width:83%;min-height: 15px;margin-top: 20px;margin-right: 280px;background-color:#FFFFFF ">
                    <span>快捷方式</span>
                </div>

                 <div class="layui-card-body"   style="background-color: #fff;margin-top:2px;width: 83%;height: 140px;margin-left:20px " >

                            <#--
                                                <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu"
                                                    lay-filter="layadmin-system-side-menu">-->

                            <#--      <li data-name="get" class="layui-nav-item" >
                                      <img src="/pic/1.png">
                                      <a href="javascript:;" lay-href="/" lay-tips="虹膜采集" lay-direction="2">
                                          <i class="layui-icon layui-icon-home"></i>
                                          <cite>主页</cite>
                                      </a>
                                  </li>-->
                            <ul style="clear: both;width: 100%">
                                <#if pcSystem.menu ?index_of(",11,") != -1>
                                    <li data-name="cjsb"  style="float: left;margin-left:40px;height:110px;width:140px;margin-top: 20px;text-align: center">
                                        <a lay-href="/gather/gatherPage"> <div style="width: 140px;height: 80px;text-align: center" >
                                            <img src="${basePath}/iias/img/pic/1.png" ></br>
                                        </div>
                                        </a>
                                        <a lay-href="/gather/gatherPage"="/gather/gatherPage" style="width:140px;display:block;text-align:center">虹膜采集</a>
                                    </li>
                                </#if>
                                <#if pcSystem.menu ?index_of(",12,") != -1>
                                <li data-name="cjsb" style="float: left;margin-left:40px;height:110px;width:140px;margin-top: 20px;text-align: center">
                                    <a lay-href="/identify/identiryUI"> <div style="width: 140px;height: 80px;text-align: center">
                                            <img src="${basePath}/iias/img/pic/2.png"></br>
                                        </div>
                                    </a>
                                        <a lay-href="/identify/identiryUI" style="width:140px;display:block;text-align:center">虹膜识别</a>
                                    </li>
                                </#if>
                                <#if pcSystem.menu ?index_of(",21,") != -1>
                                    <li data-name="cjsb" style="float: left;margin-left:40px;margin-top: 20px;height:110px;width:140px;text-align: center">
                                        <a lay-href="/gather_record/gatherRecordList">  <div style="width: 140px;height: 80px;text-align:center">
                                            <img src="${basePath}/iias/img/pic/3.png" ></br>
                                        </div>
                                        </a>
                                        <a lay-href="/gather_record/gatherRecordList" style="width:140px;display:block;text-align:center">采集记录查询</a>
                                    </li>
                                </#if>

                                <#if pcSystem.menu ?index_of(",22,") != -1>
                                    <li data-name="cjsb" style="float: left;margin-left:40px;height:110px;width:140px;margin-top: 20px";text-align: center">
                                        <a lay-href="/gather_record/cjr"> <div style="width: 140px;height: 80px;text-align:center">
                                            <img src="${basePath}/iias/img/pic/4.png" ></br>
                                        </div>
                                        </a>
                                        <a lay-href="/gather_record/cjr" style="width:140px;display:block;text-align:center">采集量统计</a>
                                    </li>
                                </#if>

                                <#if pcSystem.menu ?index_of(",24,") != -1>
                                    <li data-name="cjsb" style="float: left;height:110px;margin-left:40px;width:140px;margin-top: 20px;text-align: center"">
                                        <a lay-href="/gather_record/batchList"> <div style="width: 140px;height: 80px;text-align:center">
                                            <img src="${basePath}/iias/img/pic/5.png" ></br>
                                        </div>
                                        </a>
                                        <a lay-href="/gather_record/batchList" style="width:140px;display:block;text-align:center">批量查询</a>
                                    </li>
                                </#if>
                                <#if pcSystem.menu ?index_of(",31,") != -1>
                                    <li data-name="cjsb" style="float: left;height:110px;margin-left:40px;width:140px;margin-top: 20px;text-align: center"">
                                        <a lay-href="/sbcxtj/sbjlcx"> <div style="width: 140px;height: 80px;text-align:center">
                                            <img src="${basePath}/iias/img/pic/6.png" ></br>
                                        </div>
                                        </a>
                                        <a lay-href="/sbcxtj/sbjlcx" style="width:140px;display:block;text-align:center">识别记录查询</a>
                                    </li>
                                </#if>
                                <#if pcSystem.menu ?index_of(",32,") != -1>
                                    <li data-name="cjsb" style="float: left;height:110px;margin-left:40px;width:140px;margin-top: 20px;text-align: center"">
                                        <a lay-href="/identify_record/time">   <div style="width: 140px;height: 80px;text-align:center">
                                            <img src="${basePath}/iias/img/pic/7.png"></br>
                                        </div>
                                        </a>
                                        <a lay-href="/identify_record/time" style="width:140px;display:block;text-align:center">识别量统计</a>
                                    </li>
                                </#if>
                            </ul>
                        </div>

                <div class="layui-card-body" style="height:140px; margin-left:20px;width:83%;margin-right: 280px;background-color:#FFFFFF ">
                <ul style="margin-left: -190px;width: 100%">
                    <#if pcSystem.menu ?index_of(",11,") != -1>
                       <#-- <li data-name="cjsb"  style="float: left;margin-left: 240px;height:110px;width:7%;margin-top: 20px;text-align: center">-->
                                    <li data-name="cjsb" style="float: left;margin-left: 235px;height:110px;width:140px;margin-top: 20px" class="layui-this">
                                        <a lay-href="/warning/bjxxcx">   <div style="width: 140px;height: 80px;text-align: center">
                                            <img src="${basePath}/iias/img/pic/8.png" ><br>
                                        </div>
                                        </a>
                                        <a lay-href="/warning/bjxxcx" style="width:140px;display:block;text-align:center">报警信息查询</a>
                                    </li>
                                </#if>

                                <#if pcSystem.menu ?index_of(",34,") != -1>
                                    <li data-name="cjsb" style="float: left;margin-left: 30px;;margin-top: 20px;height:110px;width:140px;" class="layui-this">
                                        <a lay-href="/information/personView">     <div style="width: 140px;height: 80px;text-align: center" >
                                            <img src="${basePath}/iias/img/pic/9.png" ><br>
                                        </div>
                                        </a>
                                        <a lay-href="/information/personView" style="width:140px;display:block;text-align:center">人员信息维护</a>
                                    </li>
                                </#if>
                                <#if pcSystem.menu ?index_of(",34,") != -1>
                                    <li data-name="cjsb" style="float: left;margin-left:30px;height:110px;width:140px;margin-top: 20px" class="layui-this">
                                        <a lay-href="/setting/org">  <div style="width: 140px;height: 80px;text-align: center" >
                                            <img src="${basePath}/iias/img/pic/10.png" ><br>
                                        </div>
                                        </a>
                                        <a lay-href="/setting/org" style="width:140px;display:block;text-align:center" >组织机构管理</a>
                                    </li>
                                </#if>

                      </ul>
                </div>


               <#-- 左模块-->
                <div  class="layui-card-body" style="height:20px;width:40%;float: left;text-justify:inter-ideograph; margin-left:20px;margin-top: 20px;background-color:#FFFFFF ">
                    <span style="width:140px;text-align:center;float: left">近十天的采集量统计</span>
                        <a<#-- lay-href="/gather_record/time"--> id="ckxq"  style="width:140px;text-align:center;float: right">查看详情>></a>
                </div>

                <div  class="layui-card-body" style="height:20px;width:40%;float: left;text-justify:inter-ideograph; margin-left:20px;margin-top: 20px;background-color:#FFFFFF ">
                    <span style="width:140px;text-align:center;float: left">近十天的识别量统计</span>
                    <a <#--lay-href="/identify_record/time"--> id="ckxq1" style="width:100px;text-align:center;float: right">查看详情>></a>
                </div>

                <div  class="layui-card-body" id="biao1" style="height:400px;width:40%;float: left; margin-left:20px;margin-top: 2px;background-color:#FFFFFF ">
                </div>
                <#--右模块-->

                <div  class="layui-card-body" id="biao2" style="height:400px;width:40%;float: left; margin-left:20px;margin-top: 2px;background-color:#FFFFFF ">
                </div>

            </div>

        </div>
        <script>


            layui.use(['index', 'element', 'echarts', 'laydate', 'form'], function() {
                var $ = layui.$, element = layui.element, echarts = layui.echarts,
                    carousel = layui.carousel, laydate = layui.laydate, form = layui.form;


                $('#ckxq').on('click', function () {
              $("#ckxq").attr('lay-href','/gather_record/time');
              $("#ckxq").text("采集统计");
                });
                $('#ckxq1').on('click', function () {
                    $("#ckxq1").attr('lay-href','/identify_record/time');
                    $("#ckxq1").text("识别统计");
                });


                var sjsjStart,sjsjEnd,id,name;
                   $.get("/time",function(result){
                       sjsjStart=result[1];
                       sjsjEnd=result[0];
                       id=result[2];
                       name=result[3];

                  /*    alert(sjsjStart);
                       alert(sjsjEnd);
                       alert(id);*/

                     /*-----------------------------------------------------------------------------------------------------------------------------------------------------*/

                       $.get("/gather_record/sjtjList",{sjsjStart:sjsjStart, sjsjEnd:sjsjEnd ,flg_wo:"", /*id:id,*/ time:new Date()},function(result){
                       /*    alert(sjsjStart);
                           alert(sjsjEnd);*/
                      /* alert(name);*/
                           //采集时间集合
                           var cdtlist = new Array();
                           //采集数量集合
                           var cjslList = new Array();

                           var resultObj = eval("(" + result + ")");
                           var data = resultObj.data

                           var nums = [];



                           for (var i = 0; i < data.length; i++) {
                               cdtlist[i] = data[i].cdt;
                               cjslList[i] = data[i].count;

                               var bing = new Object();
                               bing.name = data[i].cdt;
                               bing.value = data[i].count;
                               nums.push(bing)
                           }


                           //柱状图
                           var zhuChart = echarts.init(document.getElementById('biao1'));
                           zhuChart.setOption({
                               noDataLoadingOption: {
                                   text: '暂无数据',
                                   "textStyle": {
                                       "fontSize": 20,
                                       "fontWeight":400
                                   },
                                   effect: 'bubble'
                               },
                               backgroundColor: 'white',
                               title: {
                                   text: '人数（单位：人）',
                                   x: 60,
                                   y: 30,
                                   "textStyle": {
                                       "fontSize": 14,
                                       "fontWeight":400
                                   }
                               },
                               tooltip: {
                                   trigger: 'axis'
                               },
                               legend: {
                                   data: []
                               },
                               xAxis: {
                                   data: cdtlist
                               },
                               yAxis: {
                                   type: 'value'
                               },
                               series: [
                                   {
                                       name: '采集人数',
                                       type: 'bar',
                                       data: nums,
                                   }
                               ]
                           });

                           //加载静态表格
                           var tab = ' <table class="layui-table"> \n'+
                               ' <colgroup> \n'+
                               ' <col width="150"> \n'+
                               ' <col width="150"> \n'+
                               ' <col width="200"> \n'+
                               ' <col> \n'+
                               ' </colgroup> \n'+
                               ' <thead> \n'+
                               ' <tr> \n'+
                               ' <th>采集日期</th> \n'+
                               ' <th>数量(单位:人)</th> \n'+
                               ' </tr> \n'+
                               ' </thead> \n'+
                               ' <tbody> \n';
                           var numCount = 0;

                           for (var i=0; i<data.length; i++) {
                               tab += ' <tr> \n'+
                                   ' <td> ' + data[i].cdt + ' </td> \n'+
                                   ' <td> ' + data[i].count + ' </td> \n'+
                                   ' </tr> \n';
                               numCount= numCount+data[i].count;
                           }
                           if (data.length==0){
                               tab += ' <tr> \n'+
                                   ' <td colspan="2" align="center"> ' + "暂无数据" + ' </td> \n'+
                                   ' </tr> \n';
                           } else {
                               tab += ' <tr bgcolor="#F2F2F2"> \n'+
                                   ' <td> ' + "总数" + ' </td> \n'+
                                   ' <td> ' + numCount + ' </td> \n'+
                                   ' </tr> \n';
                           }

                           tab += ' </tbody> \n'+
                               ' </table> \n';

                           $("#biaoge").html(tab);
                       })


                       /*----------------------------------------------------------------------------------------------------------------------------------------------------*/

                       $.get("/identify_record/sjtjList",{sjsjStart:sjsjStart, sjsjEnd:sjsjEnd,flg_wo:"", /*id:id,*/time:new Date()},function(result){

                           //采集时间集合
                           var cdtlist = new Array();
                           //采集数量集合
                           var cjslList = new Array();

                           var resultObj = eval("(" + result + ")");
                           var data = resultObj.data

                           var nums = [];



                           for (var i = 0; i < data.length; i++) {
                               cdtlist[i] = data[i].cdt;
                               cjslList[i] = data[i].count;

                               var bing = new Object();
                               bing.name = data[i].cdt;
                               bing.value = data[i].count;
                               nums.push(bing)
                           }


                           //柱状图
                           var zhuChart1 = echarts.init(document.getElementById('biao2'));
                           zhuChart1.setOption({
                               noDataLoadingOption: {
                                   text: '暂无数据',
                                   "textStyle": {
                                       "fontSize": 20,
                                       "fontWeight":400
                                   },
                                   effect: 'bubble'
                               },
                               backgroundColor: 'white',
                               title: {
                                   text: '人数（单位：人）',
                                   x: 60,
                                   y: 30,
                                   "textStyle": {
                                       "fontSize": 14,
                                       "fontWeight":400
                                   }
                               },
                               tooltip: {
                                   trigger: 'axis'
                               },
                               legend: {
                                   data: []
                               },
                               xAxis: {
                                   data: cdtlist
                               },
                               yAxis: {
                                   type: 'value'
                               },
                               series: [
                                   {
                                       name: '识别人数',
                                       type: 'bar',
                                       data: nums,
                                   }
                               ]
                           });


                           //加载静态表格
                           var tab = ' <table class="layui-table"> \n'+
                               ' <colgroup> \n'+
                               ' <col width="150"> \n'+
                               ' <col width="150"> \n'+
                               ' <col width="200"> \n'+
                               ' <col> \n'+
                               ' </colgroup> \n'+
                               ' <thead> \n'+
                               ' <tr> \n'+
                               ' <th>采集日期</th> \n'+
                               ' <th>数量(单位:人)</th> \n'+
                               ' </tr> \n'+
                               ' </thead> \n'+
                               ' <tbody> \n';
                           var numCount = 0;

                           for (var i=0; i<data.length; i++) {
                               tab += ' <tr> \n'+
                                   ' <td> ' + data[i].cdt + ' </td> \n'+
                                   ' <td> ' + data[i].count + ' </td> \n'+
                                   ' </tr> \n';
                               numCount= numCount+data[i].count;
                           }
                           if (data.length==0){
                               tab += ' <tr> \n'+
                                   ' <td colspan="2" align="center"> ' + "暂无数据" + ' </td> \n'+
                                   ' </tr> \n';
                           } else {
                               tab += ' <tr bgcolor="#F2F2F2"> \n'+
                                   ' <td> ' + "总数" + ' </td> \n'+
                                   ' <td> ' + numCount + ' </td> \n'+
                                   ' </tr> \n';
                           }

                           tab += ' </tbody> \n'+
                               ' </table> \n';

                           $("#biaoge").html(tab);
                       });

                   } )

                     } )

        </script>