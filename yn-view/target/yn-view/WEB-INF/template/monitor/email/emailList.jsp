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
					<span class="s1">邮箱管理</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_102"/>
                <form id="email_form" action = "emailList" method = "post" >
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
                					<span>告警人：</span>
                					<input type="text" class="form-input" style="width: 200px" name="emailName" value="${t5003WarnEmail.emailName }" />
                				</td>
                				<td>
                					<span>邮箱账号：</span>
                					<input type="text" class="form-input" style="width: 200px" name="emailUsername" value="${t5003WarnEmail.emailUsername }" />
                				</td>
                			</tr>
                			<tr>
                				<td colspan="2">
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
                					<shiro:hasPermission name="fun_30010_102_1">
                						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/email/toAddEmail'">添加</button>
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
<!-- 	                            <th width="140">任务id</th> -->
<!-- 	                            <th width="140">设备id</th> -->
	                            <th width="140">告警人</th>
	                            <th width="140">邮箱账号</th>
	                            <th width="140">描述</th>
	                            <th width="140">状态</th>
	                            <th width="140">操作</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
<%-- 	                    		<td>${item.taskId } --%>
<!-- 	                    		</td> -->
<%-- 	                    		<td>${item.machineId } --%>
<!-- 	                    		</td> -->
								<td>${item.emailName }
	                    		</td>
	                    		<td>${item.emailUsername }
	                    		</td>
	                    		<td>${item.emailDesc }
	                    		</td>
	                    		<td>
	                    			<c:if test="${item.status == 0}">
	                    				正常
	                    			</c:if>
	                    			<c:if test="${item.status == 1}">
	                    				屏蔽
	                    			</c:if>
	                    		</td>
	                    		<td>
	                    			  <shiro:hasPermission name="fun_30010_102_2">
			                          	<a href="javascript:void(0)" onclick="location='<%=path%>/rest/email/toModifyEmail?id=${item.id }'" target="_blank" >修改</a>
			                          </shiro:hasPermission>
			                          <shiro:hasPermission name="fun_30010_102_3">
			                            <a href="javascript:void(0)" onclick="delEmail('${item.id}')" target="_blank" >删除</a>
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
		$('#email_form').submit();
	}
	//删除
	function delEmail(id) {
		if(window.confirm("确定删除吗")){
			$.post(base._url+"/rest/email/delEmail?id="+id,null,function(data){
				alert(data.msg);
				window.location.reload();
			},'json');
		}
	};
	
</script>
</body>
</html>