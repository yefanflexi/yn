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
					<span class="s1">角色管理</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="10"/>
                <input type="hidden" id="navVal2" value="10_2"/>
                <form id="jslist_form" action = "jsgl" method = "post" >
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
                					<span>角色名称：</span>
                					<input type="text" class="form-input" style="width: 200px" name="roleName" value="${t1202Role.roleName }" />
                				</td>
                			</tr>
                			<tr>
                				<td colspan="2">
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
                					<shiro:hasPermission name="fun_10_2_1">
                						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/sys/toAddRole'">添加</button>
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
	                            <th width="130">角色名</th>
	                            <th width="100">角色描述</th>
	                            <th width="100">排序</th>
	                            <th width="60">状态</th>
	                            <th width="100">操作</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
	                    		<td>${item.roleName }
	                    		</td>
	                    		<td>${item.roleDesc }
	                    		</td>
	                    		<td>${item.orderBy }
	                    		</td>
	                    		<td>
	                    			<c:if test="${item.state == '0'}">
	                    				<span style="color: green">可用</span>
	                    			</c:if>
	                    			<c:if test="${item.state == '1'}">
	                    				<span style="color: red">不可用</span>
	                    			</c:if>
	                    		</td>
	                    		<td>
                    				<shiro:hasPermission name="fun_10_2_6">
	                    				<a href="permission?id=${item.id }" target="_blank" >权限配置</a>
	                    			</shiro:hasPermission>
	                    			<shiro:hasPermission name="fun_10_2_2">
		                          		<a href="javascript:void(0)" onclick="location='<%=path%>/rest/sys/toModifyRole?id=${item.id }'" target="_blank" >修改</a>
			                        </shiro:hasPermission>
		                          	<shiro:hasPermission name="fun_10_2_3">
			                            <a href="javascript:void(0)" onclick="delRole('${item.id}')" target="_blank" >删除</a>
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
$.pageLwFn("fun",'${page.pageNo}','${page.totalPages}','${page.pageSize}','${page.totalCount}');
	function fun(num){
		$("#xmgl_pageNo").val(num);
		$('#jslist_form').submit();
	}
	
	//删除
	function delRole(id) {
		if(window.confirm("确定删除吗")){
			$.post(base._url+"/rest/sys/delRole?id="+id,null,function(data){
				alert(data.msg);
				window.location.reload();
			},'json');
		}
	};
	
</script>
</body>
</html>