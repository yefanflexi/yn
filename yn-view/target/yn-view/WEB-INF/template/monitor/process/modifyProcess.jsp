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
					<span class="s1">修改进程</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_104"/>
                <form id="modifyProcess_form" action ="modifyProcess" method = "post" onsubmit="return check()">
                	<div class="b-form">
                		<div class="head">
                			<div class="l bj-12">
                				<p>修改</p>
                			</div>
                			<div class="clearBoth"></div>
                		</div>
                		<input type="hidden" name="id" value="${t5008Process.id}"/>
                		<table class="tableSt2 main" >
							<tr>
                				<td width="200px" align="center">
                					<span>进程名字</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="procName" value="${t5008Process.procName}"/>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>进程编码</span>
                				</td>
	                			<td>
	               					<input type="text" style="width:200px"  class="form-input" name="procCode" value="${t5008Process.procCode}"/>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>进程描述</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="procDesc" value="${t5008Process.procDesc}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>是否监控</span>
                				</td>
	                			<td>
	               					<select name="monitorTag" id="sel_monitorTag" class="form-input" style="width: 200px">
                						<option value="0">不监控</option>
                						<option value="1">监控</option>
	                				</select>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>自定义</span>
                				</td>
	                			<td>
	                				<select id="sel_customTag" name="customTag" class="form-input" style="width: 200px">
	                					<option value="0">不可</option>
	                					<option value="1">可以</option>
									</select>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>进程类型</span>
                				</td>
	                			<td>
	                				<select id="sel_procType" name="procType" class="form-input" style="width: 200px">
	                					<option value="0">自定义详情不可见</option>
	                					<option value="1">ganglia</option>
	                					<option value="2">进程</option>
	                					<option value="3">端口</option>
	                					<option value="4">自定义(并自动执行)</option>
									</select>
	                			</td>
                			</tr>
                		</table>
                	</div>
                	<input class="btn btn-black r3" type="submit" value="确定">
                	<input class="btn btn-black r3" type="button" value="返回" onclick="location='<%=path%>/rest/process/processList'">
                </form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$("#sel_monitorTag").val('${t5008Process.monitorTag}');
	$("#sel_customTag").val('${t5008Process.customTag}');
	$("#sel_procType").val('${t5008Process.procType}');
</script>
</body>
</html>