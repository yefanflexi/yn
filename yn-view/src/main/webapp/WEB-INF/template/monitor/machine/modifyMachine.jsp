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
					<span class="s1">修改设备</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_101"/>
                <form id="modifyMachine_form" action ="modifyMachine" method = "post" onsubmit="return check()">
                	<div class="b-form">
                		<div class="head">
                			<div class="l bj-12">
                				<p>修改</p>
                			</div>
                			<div class="clearBoth"></div>
                		</div>
                		<input type="hidden" name="id" value="${t5004Machine.id}"/>
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
                					<span>服务器编码</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="maCode" value="${t5004Machine.maCode}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>服务器名</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="maName" value="${t5004Machine.maName}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>服务器描述</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="maDesc" value="${t5004Machine.maDesc}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>服务器ip</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="maIp" value="${t5004Machine.maIp}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>端口</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="maPort" value="${t5004Machine.maPort}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>状态</span>
                				</td>
	                			<td>
	               					<select id="sel_state" name="state" class="form-input" style="width: 200px">
       									<option value="0">可用</option> 
       									<option value="1">不可用</option>
									</select>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>硬盘占用比</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="diskWarnProp" value="${t5004Machine.diskWarnProp}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>内存占比告警</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="memWarnProp" value="${t5004Machine.memWarnProp}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>用户名</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="userName" value="${t5004Machine.userName}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>密码</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="passWord" value="${t5004Machine.passWord}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>排序</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="orderBy" value="${t5004Machine.orderBy}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>服务器图标</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="maIcon" value="#xe60c;" value="${t5004Machine.maIcon}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>主服务器</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="parentId" value="${t5004Machine.parentId}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>监控策略</span>
                				</td>
	                			<td>
	               					<select id="sel_strategyId" name="strategyId" class="form-input" style="width: 200px">
										<c:forEach items="${t5006Strategys}" var="item"> 
        									<option value="${item.id}">  
        									 	${item.strategyName}  
        									</option> 
        								</c:forEach> 
									</select>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>备注</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="remark" value="${t5004Machine.remark}" />
	                			</td>
                			</tr>
                		</table>
                	</div>
                	<input class="btn btn-black r3" type="submit" value="确定">
                	<input class="btn btn-black r3" type="button" value="返回" onclick="location='<%=path%>/rest/machine/machinelist'">
                </form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$("#sel_taskId").val('${t5004Machine.taskId}');
$("#sel_state").val('${t5004Machine.state}');
$("#sel_strategyId").val('${t5004Machine.strategyId}');
</script>
</body>
</html>