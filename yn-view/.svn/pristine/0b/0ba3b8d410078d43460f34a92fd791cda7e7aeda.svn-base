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
<!--                 		<div class="head"> -->
<!--                 			<div class="l bj-12"> -->
<!--                 				<p>查询</p> -->
<!--                 			</div> -->
<!--                 			<div class="clearBoth"></div> -->
<!--                 		</div> -->
                		<table class="tableSt2 main" >
<!--                 			<tr> -->
<!--                 				<td> -->
<!--                 					<span>项目名称</span> -->
<%--                 					<input type="text" class="form-input" name="projectName" value="${projectname !=null? projectname : tg8000ProjectVOmsg.projectName }" /> --%>
<!--                 				</td> -->
<!--                 				<td> -->
<!--                 					<span>商户电话</span> -->
<%--                 					<input type="text" class="form-input" name="businessPhone" id="businessPhone" value="${businessphone !=null? businessphone : tg8000ProjectVOmsg.businessPhone}" /> --%>
<!--                 				</td> -->
<!--                 			</tr> -->
<!--                 			<tr> -->
<!--                 				<td colspan="2"> -->
<!--                 					<button class="btn btn-black r3" type="button" id ="busbtn" onclick="xm_select()">查询</button> -->
<!--                 					<a class="btn btn-black r3 ghost" onclick="xm_reset()">重置</a> -->
<!--                 					<a class="btn btn-red r3" onclick="delrojectBatch()">批量删除</a> -->
<!--                 				</td> -->
<!--                 			</tr> -->
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
	                            <th width="130">登录账号</th>
	                            <th width="130">真实姓名</th>
	                            <th width="100">手机</th>
	                            <th width="100">注册时间</th>
	                            <th width="60">所属门店</th>
	                            <th width="60">排序</th>
	                            <th width="60">状态</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
	                    		<td>${item.userId }
	                    		</td>
	                    		<td>${item.realName }
	                    		</td>
	                    		<td>${item.phone }
	                    		</td>
	                    		<td>${item.createTime }
	                    		</td>
	                    		<td>${item.enId }
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
		$('#yhlist_form').submit();
	}
	
</script>
</body>
</html>