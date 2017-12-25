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
					<span class="s1">硬盘信息-${maIp}-${maName}</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_100"/>
                <form id="disk_form" action = "diskDetail" method = "post" >
<!--                 	<div class="b-form"> -->
<!--                 		<div class="head"> -->
<!--                 			<div class="l bj-12"> -->
<!--                 				<p>查询</p> -->
<!--                 			</div> -->
<!--                 			<div class="clearBoth"></div> -->
<!--                 		</div> -->
<!--                 		<table class="tableSt2 main" > -->
<!--                 			<tr> -->
<!--                 				<td> -->
<!--                 					<span>任务名称：</span> -->
<!--                 					<select id="sel_taskId" name="taskId" class="form-input" style="width: 200px"> -->
<!-- 										<option value="">--请选择--</option> -->
<%-- 										<c:forEach items="${t5001Tasks}" var="item">  --%>
<%--         									<option value="${item.id}">   --%>
<%--         									 	${item.taskName}   --%>
<!--         									</option>  -->
<%--         								</c:forEach>  --%>
<!-- 									</select> -->
<!--                 				</td> -->
<!--                 				<td> -->
<!--                 					<span>设备名称：</span> -->
<%--                 					<input type="text" class="form-input" style="width: 200px" name="maName" value="${t5004Machine.maName }"/> --%>
<!--                 				</td> -->
<!--                 			</tr> -->
<!--                 			<tr> -->
<!--                 				<td colspan="2"> -->
<!--                 					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button> -->
<%--                 					<shiro:hasPermission name="fun_30010_101_1"> --%>
<%--                 						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/machine/toAddMachine'">添加</button> --%>
<%-- 			                        </shiro:hasPermission> --%>
<!--                 				</td> -->
<!--                 			</tr> -->
<!--                 		</table> -->
<!--                 	</div> -->
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
                
                <!--  主体内容 end -->
<!--                 <div class="fun pageStyle"></div> -->
                
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
		$('#warn_form').submit();
	}
</script>
</body>
</html>