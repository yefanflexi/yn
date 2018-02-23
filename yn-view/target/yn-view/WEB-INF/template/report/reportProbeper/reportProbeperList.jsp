<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>云南</title>
    <%@ include file="/common/nocahe_tld_resource.jsp" %>
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
					<span class="s1">终端机顶盒性能报表</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_103"/>
                <form id="reportProbeper_form" action = "reportProbeperList" method = "post" >
                	<input type="hidden" name="pageNo" id="xmgl_pageNo" >
                	<div class="b-form">
                		<div class="head">
                			<div class="l bj-12">
                				<p>查询</p>
                			</div>
                			<div class="clearBoth"></div>
                		</div>
                		<table class="tableSt2 main" >
                			<tr>
                				<td>
                					<span>时间：</span>
                					<select id="sel_timeType" name="timeType" class="form-input" style="width: 200px" onchange="changeTimeType(this.value)">
                						<option value="1">本月</option>
                						<option value="2">本周</option>
                						<option value="3">本天</option>
                					</select>
                				</td>
                				<td colspan="2">
                					<span>自定义时间：</span>
                					<input type="text" class="form-input" style="width: 170px" id="beginTime" value="${beginTime}" name="beginTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'endTime\')}'});" readonly="readonly"/>&nbsp;&nbsp;至&nbsp;&nbsp;
			                  		<input type="text" class="form-input" style="width: 170px" id="endTime" value="${endTime}" name="endTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'beginTime\')}'});" readonly="readonly"/>&nbsp;&nbsp;
				               			
                				</td>
                			</tr>
                			<tr>
                				<td>
                					<span>平台：</span>
                					<select id="sel_platform" name="platform" class="form-input" style="width: 200px">
                						<option value="">全部</option>
                						<c:forEach items="${diminfors }" var="item">
                							<option value="${item.platform }">${item.platform }</option>
                						</c:forEach>
                					</select>
                				</td>
                				<td>
                					<span>区域：</span>
                					<select id="sel_location" name="location" class="form-input" style="width: 200px">
                						<option value="">全部</option>
                						<c:forEach items="${diminfors_loc }" var="item">
                							<option value="${item.city }">${item.city }</option>
                						</c:forEach>
                					</select>
                				</td>
                				<td>
                					<span>厂商：</span>
                					<select id="sel_provider" name="provider" class="form-input" style="width: 200px">
                						<option value="">全部</option>
                						<c:forEach items="${diminfors_pro }" var="item">
                							<option value="${item.provider }">${item.provider }</option>
                						</c:forEach>
                					</select>
                				</td>
                			</tr>
                			<tr>
                				<td colspan="3">
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
               						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="_export()">导出</button>
                				</td>
                			</tr>
                		</table>
                	</div>
                </form>
                
				<table class="layui-table" lay-filter="parse-table-demo" >
                		<thead>
                			<tr>
	                			<th lay-data="{field:'timestamp', width:110}">日期</th>
	                            <th lay-data="{field:'platform', width:110}">平台</th>
	                            <th lay-data="{field:'location', width:110}">区域</th>
	                            <th lay-data="{field:'provider', width:110}">厂商</th>
	                			<th lay-data="{field:'usedcpu', width:110}">CPU使用率(%)</th>
	                			<th lay-data="{field:'usedmem', width:110}">内存使用率(%)</th>
	                			<th lay-data="{field:'channelchgsec', width:110}">频道切换时长(ms)</th>
	                			<th lay-data="{field:'bootupsec', width:110}">开机启动时长(ms)</th>
	                			<th lay-data="{field:'vodlatencsec', width:110}">点播缓冲时长(ms)</th>
	                			<th lay-data="{field:'egprspsec', width:110}">EGP响应时长(ms)</th>
		                    </tr>
                		</thead>
	                    <tbody>
	                    	<c:forEach items="${page.result }" var="item">
		                    	<tr>
		                    		<td><fmt:formatDate value="${item.timestamp }" type="DATE" /></td>
		                    		<td>${item.platform }</td>
		                    		<td>${item.location }</td>
		                    		<td>${item.provider }</td>
		                    		<td>
		                    			<fmt:formatNumber type="number" value="${item.usedcpu *100}" maxFractionDigits="2"/>%
		                    		</td>
		                    		<td>
		                    			<fmt:formatNumber type="number" value="${item.usedmem *100}" maxFractionDigits="2"/>%
		                    		</td>
		                    		<td>${item.channelchgsec }</td>
		                    		<td>${item.bootupsec }</td>
		                    		<td>${item.vodlatencsec }</td>
		                    		<td>${item.egprspsec }</td>
		                    	</tr>
		                    </c:forEach>
	                    </tbody>
                	</table>
                <!--  主体内容 end -->
                <div class="fun pageStyle"></div>
			</div>
		</div>
	</div>
</div>

<script src="<%=path %>/static/js/layui-v2.2.2/layui/layui.js"></script>

<!-- <script src="//res.layui.com/layui/dist/layui.js" charset="utf-8"></script> -->
<script>
layui.use('table', function(){
  var table = layui.table;
 
  table.init('parse-table-demo', { //转化静态表格
      limit:50,
      height: 'full-200'
    }); 
});
</script>

<script type="text/javascript">
$("#sel_timeType").val('${timeType}');
$("#sel_platform").val('${probeper.platform}');
$("#sel_location").val('${probeper.location}');
$("#sel_provider").val('${probeper.provider}');
$.pageLwFn("fun",'${page.pageNo}','${page.totalPages}','${page.pageSize}','${page.totalCount}');
	function fun(num){
		$("#xmgl_pageNo").val(num);
		$('#reportProbeper_form').submit();
	}

	//获取当前时间
	function getNowFormatDate(num) {
		var date;
		if(arguments.length == 0){
			date = new Date(); 
		}else{
			date = new Date(new Date() - 1000 * 60 * 60 * 24 * num);
		}
	    var seperator1 = "-"; 
	    var seperator2 = ":"; 
	    var month = date.getMonth() + 1; 
	    var strDate = date.getDate(); 
	    if (month >= 1 && month <= 9) { 
	        month = "0" + month; 
	    } 
	    if (strDate >= 0 && strDate <= 9) { 
	        strDate = "0" + strDate; 
	    } 
	    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate;
// 	            + " " + date.getHours() + seperator2 + date.getMinutes() 
// 	            + seperator2 + date.getSeconds(); 
	    return currentdate; 
	} 
	
	
	//改变时间类型  本月， 本周，本天
	function changeTimeType(value){
		if("1" == value){
			var nowDate = getNowFormatDate();
			var lastDate = getNowFormatDate(30);
	    	$("#endTime").val(nowDate);
	    	$("#beginTime").val(lastDate);
		}else if("2" == value){
			var nowDate = getNowFormatDate();
			var lastDate = getNowFormatDate(7);
	    	$("#endTime").val(nowDate);
	    	$("#beginTime").val(lastDate);
		}else if("3" == value){
			var nowDate = getNowFormatDate();
			var lastDate = getNowFormatDate(0);
	    	$("#endTime").val(nowDate);
	    	$("#beginTime").val(lastDate);
		}
		
	}
	
	
	function _export(){
		window.location.href='<%=path%>/rest/reportProbeper/reportProbeperList?export=true'
			+"&"+$("#reportProbeper_form").serialize();
	}
	
	//联动选择平台，区域，厂商
	$("#sel_platform").change(function(obj){
	    var chkV = $("#sel_platform").val();
	    var location = $("#sel_location").val();
// 	    if(chkV!=''){
	      $("#sel_location").empty();
	  	  $("#sel_location").append("<option value=''>全部</option>");
		  $("#sel_provider").empty();
		  $("#sel_provider").append("<option value=''>全部</option>");
	      $.post("<%=path%>/rest/findLocAdPro/locationsByplatform?platform="+chkV, null, function(data){
	        $.each(data.data, function(i, item){
	          $("#sel_location").append("<option value='"+item.city+"'>"+item.city+"</option>");
	        });
	      },'json');
	      $.post("<%=path%>/rest/findLocAdPro/providersBylocation?platform="+chkV+"&location="+location, null, function(data){
	          $.each(data.data, function(i, item){
	            $("#sel_provider").append("<option value='"+item.provider+"'>"+item.provider+"</option>");
	          });
	        },'json');
// 	    }
  });
  
  //根据区域选择厂商
  $("#sel_location").change(function(obj){
    var platform = $("#sel_platform").val();
    if(platform == undefined){
    	platform = '';
    }
    var location = $("#sel_location").val();
//     if(location!=''){
      $("#sel_provider").empty();
      $("#sel_provider").append("<option value=''>全部</option>");
      $.post("<%=path%>/rest/findLocAdPro/providersBylocation?platform="+platform+"&location="+location, null, function(data){
        $.each(data.data, function(i, item){
          $("#sel_provider").append("<option value='"+item.provider+"'>"+item.provider+"</option>");
        });
      },'json');
//     }
  })
</script>
</body>
</html>