<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>飞思达大数据监控管理后台系统</title>
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
					<span class="s1">历史信息-${maIp}-${maName}</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_100"/>
                <form id="history_form" action = "historyDetail" method = "post" >
                	<input type="hidden" name="pageNo" id="xmgl_pageNo" >
                	<input type="hidden" name="machineId" value="${machineId }"/>
                	<input type="hidden" name="procCode" value="${procCode }"/>
                </form>
                <div class="b-form">
                	<div class="head">
                		<div class="l bj-12">
                			<p>查询结果</p>
                		</div>
                		<div class="l bj-12 text-right">
                		</div>
                		<div class="clearBoth">
                			
                		</div>
                	</div>
                	<table class="tableSt1 main text-left" >
                		<tr>
	                            <th width="8%">设备IP</th>
	                            <th width="15%">监控对象</th>
	                            <th width="28%">告警命令</th>
	                            <th width="28%">响应</th>
	                            <th width="5%">执行时间</th>
	                            <th width="5%">退出状态</th>
	                            <th width="12%">创建时间</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="history">
	                    	<tr>
	                    		<td>${history.maIp}
	                    		</td>
	                    		<td>${history.pName}
	                    		</td>
	                    		<td>${history.reqCmd}
	                    		</td>
	                    		<td>${history.respCmd}
	                    		</td>
	                    		<td>${history.reqTime}
	                    		</td>
	                    		<td>${history.status }
	                    		</td>
	                    		<td>${history.createTime}
	                    		</td>
	                    	</tr>
	                    </c:forEach>
                	</table>
                </div>
                
                <!--  主体内容 end -->
                <div class="fun pageStyle"></div>
                
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
//回显信息
// $("#sel_taskId").val('${t5004Machine.taskId}');
$.pageLwFn("fun",'${page.pageNo}','${page.totalPages}','${page.pageSize}','${page.totalCount}');
	function fun(num){
		$("#xmgl_pageNo").val(num);
		$('#history_form').submit();
	}
</script>
</body>
</html>