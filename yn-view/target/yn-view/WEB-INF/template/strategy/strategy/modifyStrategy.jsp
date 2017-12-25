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
					<span class="s1">修改策略</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30090"/>
                <input type="hidden" id="navVal2" value="30090_100"/>
                <form id="modifyStrategy_form" action ="modifyStrategy" method = "post" onsubmit="return check()">
                	<div class="b-form">
                		<div class="head">
                			<div class="l bj-12">
                				<p>修改</p>
                			</div>
                			<div class="clearBoth"></div>
                		</div>
                		<input type="hidden" name="id" value="${t5006Strategy.id}"/>
                		<table class="tableSt2 main" >
                			<tr>
                				<td width="200px" align="center">
                					<span>所属任务</span>
                				</td>
	                			<td>
	               					<select id="sel_taskId" name="taskId" class="form-input" style="width: 200px">
										<c:forEach items="${t5001Tasks}" var="item"> 
        									<option value="${item.id}">  
        									 	${item.taskName}  
        									</option> 
        								</c:forEach> 
									</select>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>策略名称</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="strategyName" value="${t5006Strategy.strategyName}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>策略描述</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="strategyDesc" value="${t5006Strategy.strategyDesc}" />
	                			</td>
                			</tr>
                		</table>
                	</div>
                	<input class="btn btn-black r3" type="submit" value="确定">
                	<input class="btn btn-black r3" type="button" value="返回" onclick="location='<%=path%>/rest/strategy/strategylist'">
                </form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$("#sel_taskId").val('${t5006Strategy.taskId}');
</script>
</body>
</html>