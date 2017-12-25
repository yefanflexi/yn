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
		.div_child { width: 47%; height:100%; border: 1px solid green; display: inline-block; margin: 1ex; padding-bottom: 10px }
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
					<span class="s1">任务详情-${task.taskName}</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_100"/>
               	<div class="b-form">
               		<div class="head">
               			<div class="l bj-12">
               				<p>详情</p>
               			</div>
               			<div class="clearBoth">
               			</div>
               		</div>
               		<div class="b-form">
               			<shiro:hasPermission name="fun_30010_100_7">
               				<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/task/taskRefresh?id=${id }'" >刷新</button>
               			</shiro:hasPermission>
               		</div>
               	</div>
               	<div>
               	<c:forEach items="${t5008Processes }" var="item" varStatus="status">
               		<c:if test="${status.index %2 == 0}">
               			<div class="div_parent">
               		</c:if>
	            	
            			<div class="div_child">
							<div class="div_type_title">${item.procName}</div>
							<table class="tableSt1 main text-left" >
		                		<tr>
			                            <th width="28%">服务器IP</th>
			                            <th width="22%">服务器port</th>
			                            <th width="20%">是否告警</th>
			                            <th width="20%">操作</th>
			                            <th width="20%">状态</th>
			                            <th width="20%">硬盘</th>
			                    </tr>
			            		<c:forEach items="${item.t5004Machines }" var="item1">
			                    	<tr>
			                    		<td>
											<a href="<%=path%>/rest/machine/machineDetail?id=${item1.id }" target="_blank" >${item1.maIp }</a>
			                    		</td>
			                    		<td>${item1.maPort }
			                    		</td>
			                    		<td>
			                    			<c:if test="${item1.iswarn == 0 || (item1.iswarn == 1 && item.procCode != item1.warnProcCodeTemp)}">
	                    						<shiro:hasPermission name="fun_30010_100_5">
				                    				<a href="<%=path%>/rest/task/warnDetail?machineId=${item1.id }&procCode=${item.procCode}"  target="_blank" >
					                    				<i class="iconfont" style="color: green">&#xe64b;</i>安全
					                    			</a>
					                    		</shiro:hasPermission>
			                    			</c:if>
	                    					<c:if test="${item.procCode == item1.warnProcCodeTemp}">
	                    						<shiro:hasPermission name="fun_30010_100_5">
				                    				<a href="<%=path%>/rest/task/warnDetail?machineId=${item1.id }&procCode=${item.procCode}"  target="_blank" >
					                    				<i class="iconfont" style="color: red">&#xe612;</i>告警
					                    			</a>
					                    		</shiro:hasPermission>
	                    					</c:if>
			                    		</td>
			                    		<td>
			                    			<shiro:hasPermission name="fun_30010_100_6">
				                    			<a href="<%=path%>/rest/task/historyDetail?machineId=${item1.id }&procCode=${item.procCode}"  target="_blank" >
				                    				<i class="iconfont" style="color: #9ACD32">&#xe63f;</i>详细
				                    			</a>
				                    		</shiro:hasPermission>
			                    		</td>
			                    		<td>
			                    			<c:if test="${item1.status == 0}"><i class="iconfont" style="color: green">&#xe602;</i>在线</c:if>
			                    			<c:if test="${item1.status == 1}"><i class="iconfont">&#xe63e;</i>离线</c:if>
			                    		</td>
			                    		<td>
			                    			<c:if test="${item1.diskWarn == 0}">
			                    				<shiro:hasPermission name="fun_30010_100_8">
				                    				<a href="<%=path%>/rest/task/diskDetail?machineId=${item1.id }"  target="_blank" >
				                    					<i class="iconfont" style="color: green">&#xe65b;</i>安全
				                    				</a>
			                    				</shiro:hasPermission>
			                    			</c:if>
			                    			<c:if test="${item1.diskWarn == 1}">
				                    			<shiro:hasPermission name="fun_30010_100_8">
				                    				<a href="<%=path%>/rest/task/diskDetail?machineId=${item1.id }"  target="_blank" >
					                    				<i class="iconfont" style="color: red">&#xe65b;</i>告警
					                    			</a>
					                    		</shiro:hasPermission>
			                    			</c:if>
			                    		</td>
			                    	</tr>
								</c:forEach>
	                		</table>
						</div>
	             	
	             	<c:if test="${(status.index-1) %2 == 0}">
               			</div>
               		</c:if>
	             	
               	</c:forEach>
               	</div>
                <!--  主体内容 end -->
            </div>
		</div>
	</div>
</div>
<script type="text/javascript">

</script>
</body>
</html>