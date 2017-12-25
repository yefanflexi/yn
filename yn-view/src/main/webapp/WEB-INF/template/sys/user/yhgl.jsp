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
					<span class="s1">用户管理</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="10"/>
                <input type="hidden" id="navVal2" value="10_1"/>
                <form id="yhlist_form" action = "yhgl" method = "post" >
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
                					<span>登录账号：</span>
                					<input type="text" class="form-input" style="width: 200px" name="userId" value="${t2001User.userId }"/>
                				</td>
                				<td>
                					<span>手机号：</span>
                					<input type="text" class="form-input" style="width: 200px" name="phone" value="${t2001User.phone }"/>
                				</td>
                			</tr>
                			<tr>
                				<td colspan="2">
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
                					<shiro:hasPermission name="fun_10_1_1">
                						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/sys/toAddUser'">添加</button>
			                        </shiro:hasPermission>
			                        <button class="btn btn-green r3" type="button" id ="busbtn" onclick="tanchu()">弹出</button>
			                        <button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/sys/yhgl2'">折叠</button>
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
	                            <th width="80">登录账号</th>
	                            <th width="80">真实姓名</th>
	                            <th width="80">手机</th>
	                            <th width="80">角色</th>
	                            <th width="80">注册时间</th>
<!-- 	                            <th width="60">所属门店</th> -->
<!-- 	                            <th width="60">排序</th> -->
	                            <th width="60">状态</th>
	                            <th width="60">操作</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
	                    		<td>${item.userId }
	                    		</td>
	                    		<td>${item.realName }
	                    		</td>
	                    		<td>${item.phone }
	                    		</td>
	                    		<td>${item.roleName }
	                    		</td>
	                    		<td>${item.createTime }
	                    		</td>
<%-- 	                    		<td>${item.storeId } --%>
<!-- 	                    		</td> -->
<%-- 	                    		<td>${item.orderBy } --%>
<!-- 	                    		</td> -->
	                    		<td>
	                    			<c:if test="${item.state == '0'}">
	                    				<span style="color: green">可用</span>
	                    			</c:if>
	                    			<c:if test="${item.state == '1'}">
	                    				<span style="color: red">不可用</span>
	                    			</c:if>
	                    		</td>
	                    		<td>
	                    			<shiro:hasPermission name="fun_10_1_4">
	                    				<a href="taskConfigure?id=${item.id }" target="_blank" >任务配置</a>
	                    			</shiro:hasPermission>
	                    			<shiro:hasPermission name="fun_10_1_2">
		                          		<a href="javascript:void(0)" onclick="location='<%=path%>/rest/sys/toModifyUser?id=${item.id }'" target="_blank" >修改</a>
			                        </shiro:hasPermission>
		                          	<shiro:hasPermission name="fun_10_1_3">
			                            <a href="javascript:void(0)" onclick="delUser('${item.id}')" target="_blank" >删除</a>
		                          	</shiro:hasPermission>
	                    		</td>
	                    	</tr>
	                    </c:forEach>
                	</table>
                </div>
                <!--  主体内容 end -->
                <div class="fun pageStyle"></div>
                <div id="tanchuceshi_div"></div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$("#sel_storeId").val('${t2001User.storeId}');
$.pageLwFn("fun",'${page.pageNo}','${page.totalPages}','${page.pageSize}','${page.totalCount}');
	function fun(num){
		$("#xmgl_pageNo").val(num);
		$('#yhlist_form').submit();
	}
	
	//删除
	function delUser(id) {
		if(window.confirm("确定删除吗")){
			$.post(base._url+"/rest/sys/delUser?id="+id,null,function(data){
				alert(data.msg);
				window.location.reload();
			},'json');
		}
	};
	
	function tanchu(){
		layer.open({
			  type: 2,
			  title: '弹出层',
//	 		  skin: 'layui-layer-rim', //加上边框
			  area: ['900px', '550px'], //宽高
//	 		  area: '300', //宽高
//	 		  offset:['500','300'],
			  btn: ['确定'],
			  content: 'http://www.baidu.com',
			  yes: function(index){
				  //layer.close(index);
				  //获取弹出页面的iframe
				  //操作父页面元素
// 				  $("#tanchuceshi_div").text(kw.val());
			  }
			});
	}
	
</script>
</body>
</html>