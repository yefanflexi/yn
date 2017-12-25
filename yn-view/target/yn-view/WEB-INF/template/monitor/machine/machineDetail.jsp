<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>飞思达大数据监控管理后台系统</title>
    <%@ include file="/common/nocahe_tld_resource.jsp" %>
    <script src="<%=path %>/static/js/echarts.js"></script>
    
    <style>
		.div_parent { width: 100%; border: 0px solid green; overflow-y: hidden; overflow-x: auto; white-space: nowrap; }
		.div_child_left { width: 35%; height:100%; border: 0px solid green; display: inline-block; margin: 2ex; padding-bottom: 10px }
		.div_child_right { width: 60%; height:100%; border: 0px solid green; display: inline-block; margin: 1ex; padding-bottom: 10px}
		.div_type_title {text-align: center;font-size: 25px;color: black;}
	</style>
	
</head>
<!-- 绑定查询事件 -->
<body>

<div class="b-body">
	<!-- left begin -->
		<%@ include file="/common/left/left.jsp"%>
	<!-- left end -->
	<div class="b-wrap">
		<!-- head begin -->
			<%@ include file="/common/head/head.jsp" %>
		<!-- head end -->
		<div class="b-content">
			<div class="b-content-head">
				<div class="l">
					<span class="s1">设备-<span id="machine_name_span">${t5004Machine.maIp}-${t5004Machine.maName }</span></span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_101"/>
               	<div class="b-form">
               		<div class="head">
               			<div class="l bj-12">
               				<p>详情</p>
               			</div>
               			<div class="clearBoth">
               				<input value="${t5004Machine.id }" id="txt_machine_id" type="hidden"/>
               			</div>
               		</div>
               		<div class="b-form">
               			<input type="text" class="form-input" style="width: 170px" id="txtBeginTime" name="beginTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'txtEndTime\',{d:-1})}' ,maxDate:'#F{$dp.$D(\'txtEndTime\')}'});" readonly="readonly"/>&nbsp;&nbsp;至&nbsp;&nbsp;
                  		<input type="text" class="form-input" style="width: 170px" id="txtEndTime" name="endTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss' ,minDate:'#F{$dp.$D(\'txtBeginTime\')}', maxDate:'new Date()'});" readonly="readonly"/>&nbsp;&nbsp;
               			<button class="btn btn-green r3" type="button" id ="busbtn" onclick="pageReady()">查询</button>
               		</div>
               	</div>
               	<div id="monitor_main_div">
               	
               		<div id="monitor_main_div_type1">
               			<div class="b-form" style="border:1px solid green; display: none" id="type1_suc_div_mc_100010">
								<div id="type1_suc_div_mc_100010_echarts" style="width: 100%;height:350px;">
								</div>
						</div>
						<div class="div_parent" style="border:1px solid green; display: none; " id="type1_suc_div_mc_100020">
								<div class="div_child_left" id="type1_suc_div_mc_100020_echarts" style="height:240px;">
								</div>
								<div class="div_child_right" style="height:100%;">
									<table class="tableSt1 main text-left" >
				                		<tr>
					                            <th width="28%">文件路径</th>
					                            <th width="18%">硬盘容量</th>
					                            <th width="10%">硬盘已用</th>
					                            <th width="10%">硬盘可用</th>
					                            <th width="10%">硬盘已用占比</th>
					                            <th width="13%">挂载点</th>
					                    </tr>
					                    <c:forEach items="${listModel.listMoudel}" var="disk">
					                    	<tr>
					                    		<td>${disk.fileSystem}
					                    		</td>
					                    		<td>${disk.size}
					                    		</td>
					                    		<td>${disk.used}
					                    		</td>
					                    		<td>${disk.avail}
					                    		</td>
					                    		<td>${disk.use}
					                    		</td>
					                    		<td>${disk.mountedOn}
					                    		</td>
					                    	</tr>
					                    </c:forEach>
				                	</table>
								</div>
						</div>
						<div class="b-form" style="border:1px solid green; display: none" id="type1_suc_div_mc_100030">
								<div id="type1_suc_div_mc_100030_echarts" style="width: 100%;height:350px;">
								</div>
						</div>
						<div class="b-form" style="border:1px solid green; display: none" id="type1_suc_div_mc_100040">
								<div id="type1_suc_div_mc_100040_echarts" style="width: 100%;height:350px;">
								</div>
						</div>
						<div class="b-form" style="border:1px solid green; display: none" id="type1_suc_div_mc_100050">
								<div id="type1_suc_div_mc_100050_echarts" style="width: 100%;height:350px;">
								</div>
						</div>
						<div class="b-form" style="border:1px solid green; display: none" id="type1_suc_div_mc_100060">
								<div id="type1_suc_div_mc_100060_echarts" style="width: 100%;height:350px;">
								</div>
						</div>
               		</div>
               		
               		<div id="monitor_main_div_type2">
               		</div>
               		
               		<div id="monitor_main_div_type3">
               		</div>
               		
               		<div id="monitor_main_div_type4">
               		</div>
        			
               	</div>
                <!--  主体内容 end -->
			</div>
		</div>
	</div>
</div>


<%-- <script src="<%=path %>/static/js/machine/machineDetail.js"></script> --%>
<script src="<%=path %>/static/js/machine/echartOption.js?r=112212345343"></script>

<script type="text/javascript">

$(document).ready(function(){
	pageReady();
});

function pageReady(){
	//显示loading
	var index = showLoad();
	//初始化数据
	init('', 0, index);
}

function showLoad(){
	var index = layer.load(1, {
	  shade: [0.5,'#000'] //0.1透明度的白色背景
	});
	return index;
}
//获取当前的日期时间 格式“yyyy-MM-dd HH:MM:SS”
function getNowFormatDate() { 
    var date = new Date(); 
    var seperator1 = "-"; 
    var seperator2 = ":"; 
    var month = date.getMonth() + 1; 
    var strDate = date.getDate(); 
    var strHour = date.getHours();
    var strMinutes = date.getMinutes();
    var strSeconds = date.getSeconds();
    if (month >= 1 && month <= 9) { 
        month = "0" + month; 
    } 
    if (strDate >= 0 && strDate <= 9) { 
        strDate = "0" + strDate; 
    } 
    if (strHour >= 0 && strHour <= 9) { 
    	strHour = "0" + strHour; 
    } 
    if (strMinutes >= 0 && strMinutes <= 9) { 
    	strMinutes = "0" + strMinutes; 
    } 
    if (strSeconds >= 0 && strSeconds <= 9) { 
    	strSeconds = "0" + strSeconds; 
    } 
    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate 
            + " " + strHour + seperator2 + strMinutes 
            + seperator2 + strSeconds; 
    return currentdate; 
} 

function init(monitorId, pType, index){
// 	var endTime = $("#txtEndTime").val();
// 	if("" == endTime || endTime == 'underfined' || endTime == null){
// 		endTime = getNowFormatDate();
// 	}
	$.post("machineMonitorData?id="+$("#txt_machine_id").val()+"&monitorId="+monitorId+"&beginTime="+$("#txtBeginTime").val()+"&endTime="+$("#txtEndTime").val(), null, function(data){
// 		var $data = eval('('+data.data+')')
		var $data = data.data;
		if(monitorId != ''){
			var monitor = $data.t5009Monitors[0];
			//先移除原有的idv
			if(pType != 1){
				$("#type"+monitor.pType+"_suc_div_"+monitor.pCode).remove();
			}
			$("#type"+monitor.pType+"_fail_div_"+monitor.pCode).remove();
			
			if(pType == 1){
				$("#type"+monitor.pType+"_suc_div_"+monitor.pCode).hide();
				type1Monitor(monitor);
			}else if(pType == 2){
				type2Monitor(monitor);
			}else if(pType == 3){
				type3Monitor(monitor);
			}else if(pType == 4){
				type4Monitor(monitor);
			}
		}else{
			initByType($data)
		}
		//回显时间值
		showTxtTime($data.beginTime, $data.endTime);
		//关闭加载层
		layer.close(index);
	}, 'json');
}

//回显时间值
function showTxtTime(beginTime, endTime){
	$("#txtBeginTime").val(beginTime);
	$("#txtEndTime").val(endTime);
}

//设置title
// function initTitle(data){
// 	$("#machine_name_span").text(data.t5004Machine.maName);
// }

//按类型处理显示效果
function initByType(data){
	var t5009Monitors = data.t5009Monitors;
	//先隐藏所有的div
	$.each($("#monitor_main_div_type1 > div"), function(i, type1Div){
		$(type1Div).hide();
// 		var type1DivId = $(type1Div).attr("id")
// 		var fdStart = type1DivId.indexOf("type1_fail_div_");
// 		if(fdStart == 0){
// 			$(type1Div).remove();
// 		}else{
// 			$(type1Div).hide();
// 		}
	});
	$("#monitor_main_div_type2").text("");
	$("#monitor_main_div_type3").text("");
	$("#monitor_main_div_type4").text("");
	
	$.each(t5009Monitors, function(i, monitor){
		//监控类型， 1：ganglia，2：进程，3：端口，4：自定义
		var pType = monitor.pType;
		if(pType == 1){
			type1Monitor(monitor);
		}else if(pType == 2){
			type2Monitor(monitor);
		}else if(pType == 3){
			type3Monitor(monitor);
		}else if(pType == 4){
			type4Monitor(monitor);
		}
		// 按粒度刷新
		setInterval("init('"+monitor.id+"', '"+pType+"')", monitor.mInterval * 1000);
	})
}

//类型1处理
function type1Monitor(monitor){
	//监控编码
	var pCode = monitor.pCode;
	//获取状态码
	var status = monitor.type1.status;
	if(status == 0){
		//显示对应监控指标
		$("#type1_suc_div_"+monitor.pCode).show();
		
		//根据编码判断是ganglia的哪种监控
		//内存
		if(pCode == "mc_100010"){
			type1Mc100010ECharts(monitor);
		}else if(pCode == "mc_100020"){
			type1Mc100020ECharts(monitor);
		}else if(pCode == "mc_100030"){
			type1Mc100030ECharts(monitor);
		}else if(pCode == "mc_100040"){
			type1Mc100040ECharts(monitor);
		}else if(pCode == "mc_100050"){
			type1Mc100050ECharts(monitor);
		}else if(pCode == "mc_100060"){
			type1Mc100060ECharts(monitor);
		}
	}else{
		//失败
		$("#monitor_main_div_type1").append(failHtml(monitor));
	}
	
}

//打点间隔
function pointDian(polyInterval){
	if(polyInterval == "15")return 4;
	else if(polyInterval == "60")return 3;
	else if(polyInterval == "600")return 0;
}

//mc100010
function type1Mc100010ECharts(monitor){
	//显示图表
	var showDivId = "type1_suc_div_"+monitor.pCode+"_echarts";
	var type1Array = monitor.type1.listMoudel;
	var total_value = type1Array[0].total_value;
	var title = monitor.pName;
	var yName = 'KB';
	
	//折线名
	var useLine = '使用';

	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById(showDivId));
	var option = new InitLineOption();
	
	option.xAxis.axisLabel.interval = pointDian(monitor.polyInterval);
	option.yAxis.max = total_value;
	option.yAxis.name = yName;
	option.title.text = title;
	option.series[0].type = 'line';
	
	option.series[0].name = useLine;
	option.legend.data.push(useLine);
	
	option.title.subtext = '总内存'+total_value+'KB';
	option.grid.y = 85;
	option.grid.y2 = 60;
	
	$.each(type1Array, function(j, memObj){
 		option.xAxis.data.push(memObj.collection_time);
 		option.series[0].data.push(memObj.use_value);
	});
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
}

//mc100020
function type1Mc100020ECharts(monitor){
// 	//显示图表
	var showDivId = "type1_suc_div_"+monitor.pCode+"_echarts";
	var type1Array = monitor.type1.listMoudel;
	var total_value = type1Array[0].total_value;
	var free_value = type1Array[0].free_value;
	var use_value = type1Array[0].use_value;
	var title = monitor.pName;
	
	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById(showDivId));
	var option = new InitPieOption();
	option.series[0].type = 'pie';
	option.series[0].name = title;
	option.title.text = title;
	option.title.subtext = '硬盘总大小'+total_value+'GB';
	
	//pie的数据
	var dataMap =
	{
		labels: [],
		data: []
	};
	
	//已用硬盘
	var dataItem = {name:'',value:''};
	dataItem = new Object();
	dataItem.name = '使用';
	dataItem.value = use_value;
	dataMap.data.push(dataItem);
	dataMap.labels.push(dataItem.name);
	//空闲硬盘
	dataItem1 = new Object();
	dataItem1.name = '空闲';
	dataItem1.value = free_value;
	dataMap.data.push(dataItem1);
	dataMap.labels.push(dataItem1.name);
	
	option.series[0].data = dataMap.data;
	option.legend.data = dataMap.labels;
	
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
	
	//显示硬盘详情
// 	showDiskInfo(monitor);
}

//显示硬盘详情
function showDiskInfo(monitor){
	$("#type1_suc_div_mc_100020_disk_info").text(monitor.ext1.respCmd);
}

//mc100030
function type1Mc100030ECharts(monitor){
	//显示图表
	var showDivId = "type1_suc_div_"+monitor.pCode+"_echarts";
	var type1Array = monitor.type1.listMoudel;
	var title = monitor.pName;
	var yName = '%';
	
	//折线名
	var userLine = 'User';
	var systemLine = 'System'

	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById(showDivId));
	var option = new InitLineOption();
	option.xAxis.axisLabel.interval = pointDian(monitor.polyInterval);
// 	option.yAxis.max = total_value;
	option.yAxis.name = yName;
	option.title.text = title;
	
	var seriesObj = {data:[]};
	option.series.push(seriesObj);
	
	option.series[0].type = 'line';
	option.series[1].type = 'line';
	
	option.series[0].name = userLine;
	option.series[1].name = systemLine;
	option.legend.data.push(userLine);
	option.legend.data.push(systemLine);
	
// 	option.title.subtext = '总内存'+total_value+'KB';
	option.grid.y = 60;
	option.grid.x = 60;
	option.grid.y2 = 60;
	
	$.each(type1Array, function(j, bytesObj){
 		option.xAxis.data.push(bytesObj.collection_time);
 		option.series[0].data.push(bytesObj.cpu_user);
 		option.series[1].data.push(bytesObj.cpu_system);
	});
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
}

//mc100040
function type1Mc100040ECharts(monitor){
	//显示图表
	var showDivId = "type1_suc_div_"+monitor.pCode+"_echarts";
	var type1Array = monitor.type1.listMoudel;
// 	var total_value = type1Array[0].total_value;
	var title = monitor.pName;
	var yName = 'KB';
	
	//折线名
	var inLine = 'IN';
	var outLine = 'Out'

	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById(showDivId));
	var option = new InitLineOption();
	option.xAxis.axisLabel.interval = pointDian(monitor.polyInterval);
// 	option.yAxis.max = total_value;
	option.yAxis.name = yName;
	option.title.text = title;
	
	var seriesObj = {data:[]};
	option.series.push(seriesObj);
	
	option.series[0].type = 'line';
	option.series[1].type = 'line';
	
	option.series[0].name = inLine;
	option.series[1].name = outLine;
	option.legend.data.push(inLine);
	option.legend.data.push(outLine);
	
// 	option.title.subtext = '总内存'+total_value+'KB';
	option.grid.y = 60;
	option.grid.x = 60;
	option.grid.y2 = 60;
	
	$.each(type1Array, function(j, bytesObj){
 		option.xAxis.data.push(bytesObj.collection_time);
 		option.series[0].data.push(bytesObj.bytes_in);
 		option.series[1].data.push(bytesObj.bytes_out);
	});
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
}

//mc100050
function type1Mc100050ECharts(monitor){
	//显示图表
	var showDivId = "type1_suc_div_"+monitor.pCode+"_echarts";
	var type1Array = monitor.type1.listMoudel;
// 	var total_value = type1Array[0].total_value;
	var title = monitor.pName;
// 	var yName = 'KB';
	
	//折线名
	var loadFifteenLine = 'loadFifteen';
	var loadFiveLine = 'loadFive';
	var loadOneLine = 'loadOne';

	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById(showDivId));
	var option = new InitLineOption();
	option.xAxis.axisLabel.interval = pointDian(monitor.polyInterval);
// 	option.yAxis.max = total_value;
// 	option.yAxis.name = yName;
	option.title.text = title;
	
	var seriesObj = {data:[]};
	//数组每次增加需要push一个
	option.series.push(seriesObj);
	var seriesObj1 = {data:[]};
	option.series.push(seriesObj1);
	
	option.series[0].type = 'line';
	option.series[1].type = 'line';
	option.series[2].type = 'line';
	
	option.series[0].name = loadFifteenLine;
	option.series[1].name = loadFiveLine;
	option.series[2].name = loadOneLine;
	option.legend.data.push(loadFifteenLine);
	option.legend.data.push(loadFiveLine);
	option.legend.data.push(loadOneLine);
	
// 	option.title.subtext = '总内存'+total_value+'KB';
	option.grid.y = 60;
	option.grid.x = 60;
	option.grid.y2 = 60;
	
	$.each(type1Array, function(j, bytesObj){
 		option.xAxis.data.push(bytesObj.collection_time);
 		option.series[0].data.push(bytesObj.load_fifteen);
 		option.series[1].data.push(bytesObj.load_five);
 		option.series[2].data.push(bytesObj.load_one);
	});
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
}

//mc100060 proc 服务器进程
function type1Mc100060ECharts(monitor){
	//显示图表
	var showDivId = "type1_suc_div_"+monitor.pCode+"_echarts";
	var type1Array = monitor.type1.listMoudel;
// 	var total_value = type1Array[0].total_value;
	var title = monitor.pName;
// 	var yName = 'KB';
	
	//折线名
	var procRunLine = 'procRun';
	var procTotalLine = 'procTotal';

	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById(showDivId));
	var option = new InitLineOption();
	option.xAxis.axisLabel.interval = pointDian(monitor.polyInterval);
// 	option.yAxis.max = total_value;
// 	option.yAxis.name = yName;
	option.title.text = title;
	
	var seriesObj = {data:[]};
	//数组每次增加需要push一个
	option.series.push(seriesObj);
	
	option.series[0].type = 'line';
	option.series[1].type = 'line';
	
	option.series[0].name = procRunLine;
	option.series[1].name = procTotalLine;
	option.legend.data.push(procRunLine);
	option.legend.data.push(procTotalLine);
	
// 	option.title.subtext = '总内存'+total_value+'KB';
	option.grid.y = 60;
	option.grid.x = 60;
	option.grid.y2 = 60;
	
	$.each(type1Array, function(j, bytesObj){
 		option.xAxis.data.push(bytesObj.collection_time);
 		option.series[0].data.push(bytesObj.proc_run);
 		option.series[1].data.push(bytesObj.proc_total);
	});
	// 使用刚指定的配置项和数据显示图表。
	myChart.setOption(option);
}

//类型2处理
function type2Monitor(monitor){
	//判断是否执行成功
	var status = monitor.type2.status;
	if(status == 0){
		//成功
		$("#monitor_main_div_type2").append(type2SucHeadHtml(monitor.pName, monitor.pCode));
		$.each(monitor.type2.listMoudel, function(j, item){
			$("#type2_suc_table_"+monitor.pCode).append(type2SucTrItemHtml(item))
		});
	}else{
		//失败
		$("#monitor_main_div_type2").append(failHtml(monitor));
	}
}

//类型2成功头html
function type2SucHeadHtml(pName, pCode){
	var t2Html = "<div class=\"b-form\" style=\"border:1px solid green;\" id=\"type2_suc_div_"+pCode+"\">"+
	"<div style=\"font-size: 20px; padding: 10px\" id=\"type2_suc_div_"+pCode+"_pname\">"+pName+"</div>"+
	"<table class=\"tableSt1 main text-left\" id=\"type2_suc_table_"+pCode+"\">"+
	"<tr>"+
	"<th>UID</th>"+
	"<th>PID</th>"+
	"<th>PPID</th>"+
	"<th>CPU</th>"+
	"<th>STIME</th>"+
	"<th>TTY</th>"+
	"<th>TIME</th>"+
	"<th width=\"400px\">CMD</th>"+
	"</tr>"+
	"</table>"+
	"</div>";
	return t2Html;
}

//类型2成功行html
function type2SucTrItemHtml(item){
	var t2Html = "<tr>"+
	"<td>"+item.uid+"</td>"+
	"<td>"+item.pid+"</td>"+
	"<td>"+item.ppid+"</td>"+
	"<td>"+item.cpu+"</td>"+
	"<td>"+item.stime+"</td>"+
	"<td>"+item.tty+"</td>"+
	"<td>"+item.time+"</td>"+
	"<td>"+item.cmd+"</td>";
	return t2Html;
}

//类型3处理
function type3Monitor(monitor){
	//判断是否执行成功
	var status = monitor.type3.status;
	if(status == 0){
		//成功
		$("#monitor_main_div_type3").append(type3SucHtml(monitor));
	}else{
		//失败
		$("#monitor_main_div_type3").append(failHtml(monitor));
	}
}

//类型3成功html
function type3SucHtml(monitor){
	var $itme = monitor.type3;
	var t3Html = "<div class=\"b-form\" style=\"border:1px solid green\" id=\"type3_suc_div_"+monitor.pCode+"\">"+
			"<div style=\"font-size: 20px; padding: 10px\">"+monitor.pName+"</div>"+
       		"<table class=\"tableSt1 main text-left\">"+
       			"<tr>"+
       				"<th>proto</th>"+
       				"<th>recvQ</th>"+
       				"<th>sendQ</th>"+
       				"<th>localAddress</th>"+
       				"<th>foreignAddress</th>"+
       				"<th>state</th>"+
       				"<th width=\"300px\">PID_programName</th>"+
       			"</tr>"+
   				"<tr>"+
   					"<td>"+$itme.proto+"</td>"+
   					"<td>"+$itme.recvQ+"</td>"+
   					"<td>"+$itme.sendQ+"</td>"+
   					"<td>"+$itme.localAddress+"</td>"+
   					"<td>"+$itme.foreignAddress+"</td>"+
   					"<td>"+$itme.state+"</td>"+
   					"<td>"+$itme.PID_programName+"11</td>"+
   				"</tr>"+
       		"</table>"+
        "</div>";
	return t3Html;
}

//类型4处理
function type4Monitor(monitor){
	//判断是否执行成功
	var status = monitor.type4.status;
	if(status == 0){
		//成功
		$("#monitor_main_div_type4").append(type4SucHtml(monitor));
	}else{
		//失败
		$("#monitor_main_div_type4").append(failHtml(monitor));
	}
}

//类型4成功html
function type4SucHtml(monitor){
	var $itme = monitor.type4;
	var t4Html = "<div class=\"b-form\" style=\"border:1px solid green\" id=\"type4_suc_div_"+monitor.pCode+"\">"+
		"<div style=\"font-size: 20px; padding: 10px\">"+monitor.pName+"&nbsp;&nbsp;"+
		"<button class=\"btn btn-green r3\" type=\"button\" id =\"busbtn\" onclick=\"procDetail('${t5004Machine.id }','"+monitor.id+"')\">进程详情</button></div>"+
   		"<table class=\"tableSt1 main text-left\">"+
   			"<tr>"+
   				"<td style=\"width: 100px\">执行源：</td>"+
   				"<td>"+$itme.reqCmd+"</td>"+
   			"</tr>"+
   			"<tr>"+
   				"<td>执行结果：</td>"+
   				"<td>"+$itme.result+"</td>"+
   			"</tr>"+
   		"</table>"+
    "</div>";
	return t4Html;
}

function procDetail(machineId, monitorId){
	location.href="<%=path%>/rest/machine/procDetail?machineId="+machineId+"&monitorId="+monitorId;
}

//失败html 各类型一至
function failHtml(monitor){
	//TODO 先根据类型判断取哪个type里的回去数据   并判断错误码
	
	var t2Html = "<div class=\"b-form\" style=\"border:1px solid red;\" id=\"type"+monitor.pType+"_fail_div_"+monitor.pCode+"\">"+
	"<div style=\"font-size: 20px; padding: 10px\" id=\"type"+monitor.pType+"_fail_div_"+monitor.pCode+"_pname\">"+monitor.pName+"</div>"+
	"<div style=\"padding: 10px\" id=\"type"+monitor.pType+"_fail_div_"+monitor.pCode+"_pdesc\">执行失败，请检查设备信息==="+monitor.pCode+"</div>"+
	"</div>";
	return t2Html;
}

</script>

</body>
</html>