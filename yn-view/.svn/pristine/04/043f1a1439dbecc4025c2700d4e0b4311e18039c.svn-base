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
					<span class="s1">设备管理</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_101"/>
                <form id="machine_form" action = "machinelist" method = "post" >
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
                					<span>任务名称：</span>
                					<select id="sel_taskId" name="taskId" class="form-input" style="width: 200px">
										<option value="">--请选择--</option>
										<c:forEach items="${t5001Tasks}" var="item"> 
        									<option value="${item.id}">  
        									 	${item.taskName}  
        									</option> 
        								</c:forEach> 
									</select>
                				</td>
                				<td>
                					<span>设备名称：</span>
                					<input type="text" class="form-input" style="width: 200px" name="maName" value="${t5004Machine.maName }"/>
                				</td>
                			</tr>
                			<tr>
                				<td colspan="2">
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
                					<shiro:hasPermission name="fun_30010_101_1">
                						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/machine/toAddMachine'">添加</button>
			                        </shiro:hasPermission>
                				</td>
                			</tr>
                		</table>
                	</div>
                </form>
                <div class="b-form">
                	<div class="head">
                		<div class="l bj-12">
                			<p>查询结果</p>
                		</div>
                		<div class="l bj-12 text-right">
                		</div>
                		<div class="clearBoth"></div>
                	</div>
                	<table class="tableSt1 main text-left" >
                		<tr>
	                            <th width="30">所属任务名</th>
	                            <th width="30">服务器编码</th>
	                            <th width="30">服务器名</th>
	                            <th width="30">服务器描述</th>
	                            <th width="30">服务器ip</th>
	                            <th width="30">端口</th>
	                            <th width="30">用户名</th>
<!-- 	                            <th width="30">主服务器</th> -->
	                            <th width="30">是否告警</th>
	                            <th width="30">警告级别</th>
	                            <th width="30">创建时间</th>
	                            <th width="30">状态</th>
	                            <th width="30">连接</th>
	                            <th width="30">监控策略名</th>
	                            <th width="20">备注</th>
	                            <th width="50">操作</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
	                    		<td>${item.taskName }
	                    		</td>
	                    		<td>${item.maCode }
	                    		</td>
	                    		<td>${item.maName }
	                    		</td>
	                    		<td>${item.maDesc }
	                    		</td>
	                    		<td>${item.maIp }
	                    		</td>
	                    		<td>${item.maPort }
	                    		</td>
	                    		<td>${item.userName }
	                    		</td>
<%-- 	                    		<td>${item.parentId } --%>
<!-- 	                    		</td> -->
	                    		<td>
	                    			<c:if test="${item.iswarn == 1}">告警</c:if>
	                    			<c:if test="${item.iswarn == 0}">未告警</c:if>
	                    		</td>
	                    		<td>
		                    		<c:if test="${item.warnLevel == 1}">error</c:if>
	                    			<c:if test="${item.warnLevel == 2}">debug</c:if>
	                    			<c:if test="${item.warnLevel == 3}">info</c:if>
	                    			<c:if test="${item.warnLevel == 4}">warn</c:if>
	                    			<c:if test="${item.warnLevel == 5}">fafa</c:if>
	                    		</td>
	                    		<td>${item.createTime }
	                    		</td>
	                    		<td>
	                    			<c:if test="${item.state == 1}">不可用</c:if>
	                    			<c:if test="${item.state == 0}">可用</c:if>
	                    		</td>
	                    		<td>
	                    			<c:if test="${item.status == 1}">离线</c:if>
	                    			<c:if test="${item.status == 0}">在线</c:if>
	                    		</td>
	                    		<td>${item.strategyName }
	                    		</td>
	                    		<td>${item.remark }
	                    		</td>
	                    		<td>
	                    			  <shiro:hasPermission name="fun_30010_101_2">
			                          	<a href="javascript:void(0)" onclick="location='<%=path%>/rest/machine/toModifyMachine?id=${item.id }'" target="_blank" >修改</a>
			                          </shiro:hasPermission>
			                          <shiro:hasPermission name="fun_30010_101_3">
			                            <a href="javascript:void(0)" onclick="delMachine('${item.id}')" target="_blank" >删除</a>
			                          </shiro:hasPermission>
			                          <shiro:hasPermission name="fun_30010_101_4">
			                            <a href="javascript:void(0)" onclick="location='<%=path%>/rest/machine/machineDetail?id=${item.id }'" target="_blank" >详情</a>
			                          </shiro:hasPermission>
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
$("#sel_taskId").val('${t5004Machine.taskId}');
$.pageLwFn("fun",'${page.pageNo}','${page.totalPages}','${page.pageSize}','${page.totalCount}');
	function fun(num){
		$("#xmgl_pageNo").val(num);
		$('#machine_form').submit();
	}

	function delMachine(id) {
		if(window.confirm("确定删除吗")){
			$.post(base._url+"/rest/machine/delMachine?id="+id,null,function(data){
				alert(data.msg);
				window.location.reload();
			},'json');
		}
	};
</script>
</body>
</html>