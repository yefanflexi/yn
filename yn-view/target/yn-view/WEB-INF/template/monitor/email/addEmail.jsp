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
					<span class="s1">添加邮箱</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_102"/>
                <form id="addEmail_form" action ="addEmail" method = "post" onsubmit="return check()">
                	<div class="b-form">
                		<div class="head">
                			<div class="l bj-12">
                				<p>新增</p>
                			</div>
                			<div class="clearBoth"></div>
                		</div>
                		<table class="tableSt2 main" >
<!--                 			<tr> -->
<!--                 				<td width="200px" align="center"> -->
<!--                 					<span>任务名称</span> -->
<!--                 				</td> -->
<!-- 	                			<td> -->
<!-- 	                				<select id="taskId" name="taskId" class="form-input" style="width: 200px" onchange="changeMachines(this.value);"> -->
<%-- 	                					<c:forEach items="${t5001Tasks}" var="item"> --%>
<%-- 	                						<option value="${item.id}">${item.taskName}</option> --%>
<%-- 	                					</c:forEach> --%>
<!-- 	                				</select> -->
<!-- 	                			</td> -->
<!--                 			</tr> -->
<!--                 			<tr> -->
<!--                 				<td width="200px" align="center"> -->
<!--                 					<span>设备名称</span> -->
<!--                 				</td> -->
<!-- 	                			<td> -->
<!-- 	                				<select id="sel_machine" name="machineId" class="form-input" style="width: 200px"> -->
<!-- 	                				</select> -->
<!-- 	                			</td> -->
<!--                 			</tr> -->
							<tr>
                				<td width="200px" align="center">
                					<span>告警人</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="emailName" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>邮箱账号</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="emailUsername" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>描述</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="emailDesc" />
	                			</td>
                			</tr>
                		</table>
                	</div>
                	<input class="btn btn-black r3" type="submit" value="确定">
                	<input class="btn btn-black r3" type="button" value="返回" onclick="location='<%=path%>/rest/email/emailList'">
                </form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
// 	$(document).ready(function(){
// 		init($("#taskId").val());
// 	});
	
	function init(taskId){
		var sel_machine = $("#sel_machine");
		sel_machine.empty();
		$.post("changeMachines?taskId=" + taskId, null, function(data){
			var $data = data.data;
			for(var i = 0; i < $data.t5004Machines.length; i++){
				sel_machine.append("<option value='"+$data.t5004Machines[i].id+"'>"
						+$data.t5004Machines[i].maName+"</option>");
			}
		});
	}
	
	function changeMachines(taskId){
		var sel_machine = $("#sel_machine");
		sel_machine.empty();
		$.post("changeMachines?taskId=" + taskId, null, function(data){
			var $data = data.data;
			for(var i = 0; i < $data.t5004Machines.length; i++){
				sel_machine.append("<option value='"+$data.t5004Machines[i].id+"'>"
						+$data.t5004Machines[i].maName+"</option>");
			}
		})
	}
</script>
</body>
</html>