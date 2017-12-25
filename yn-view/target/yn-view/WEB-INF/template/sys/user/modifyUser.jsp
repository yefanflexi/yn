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
					<span class="s1">修改用户</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="10"/>
                <input type="hidden" id="navVal2" value="10_1"/>
                <form id="modifyUser_form" action ="modifyUser" method = "post" onsubmit="return check()">
                	<div class="b-form">
                		<div class="head">
                			<div class="l bj-12">
                				<p>修改</p>
                			</div>
                			<div class="clearBoth"></div>
                		</div>
                		<input type="hidden" name="id" value="${t2001User.id}"/>
                		<input type="hidden" name="id_" value="${t1204UserRole.id}"/>
                		<table class="tableSt2 main" >
                			<tr>
                				<td width="200px" align="center">
                					<span>登录账号</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px" class="form-input" name="userId" value="${t2001User.userId}"/>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>登录密码</span>
                				</td>
	                			<td>
	               					<input type="password" style="width:200px" class="form-input" name="password" value="${t2001User.password}"/>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>真实姓名</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="realName" value="${t2001User.realName}"/>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>手机</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="phone" value="${t2001User.phone}"/>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>角色</span>
                				</td>
	                			<td>
	                				<select id="sel_roleId" name="roleId" class="form-input" style="width: 200px">
	                					<c:forEach items="${t1202Roles}" var="item">
	                						<option value="${item.id}">${item.roleName}</option>
	                					</c:forEach>
	                				</select>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>状态</span>
                				</td>
	                			<td>
	                				<select id="sel_state" name="state" class="form-input" style="width: 200px" >
                						<option value="0">可用</option>
                						<option value="1">不可用</option>
	                				</select>
	                			</td>
                			</tr>
                		</table>
                	</div>
                	<input class="btn btn-black r3" type="submit" value="确定">
                	<input class="btn btn-black r3" type="button" value="返回" onclick="location='<%=path%>/rest/sys/yhgl'">
                </form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$("#sel_state").val('${t2001User.state}');
	$("#sel_roleId").val('${t1204UserRole.roleId}');
</script>
</body>
</html>