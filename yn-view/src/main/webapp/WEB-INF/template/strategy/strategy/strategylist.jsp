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
					<span class="s1">策略管理</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30090"/>
                <input type="hidden" id="navVal2" value="30090_100"/>
                <form id="strategy_form" action = "strategylist" method = "post" >
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
                					<span>策略名：</span>
                					<input type="text" class="form-input" style="width: 200px" name="strategyName" value="${t5006Strategy.strategyName }"/>
                				</td>
                			</tr>
                			<tr>
                				<td>
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
                					<shiro:hasPermission name="fun_30090_100_1">
                						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/strategy/toAddStrategy'">添加</button>
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
	                            <th width="190">策略名</th>
	                            <th width="190">策略描述</th>
	                            <th width="190">所属任务</th>
	                            <th width="90">操作</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
	                    		<td>${item.strategyName }
	                    		</td>
	                    		<td>${item.strategyDesc }
	                    		</td>
	                    		<td>${item.taskName }
	                    		</td>
	                    		<td>
		                   			<shiro:hasPermission name="fun_30090_100_4">
			                          	<a href="javascript:void(0)" onclick="location='<%=path%>/rest/strategy/monitorpermission?id=${item.id}'" target="_blank" >策略配置</a>
			                        </shiro:hasPermission>
			                        <shiro:hasPermission name="fun_30090_100_2">
			                          	<a href="javascript:void(0)" onclick="location='<%=path%>/rest/strategy/toModifyStrategy?id=${item.id }'" target="_blank" >修改</a>
			                        </shiro:hasPermission>
			                        <shiro:hasPermission name="fun_30090_100_3">
			                            <a href="javascript:void(0)" onclick="delStrategy('${item.id}')" target="_blank" >删除</a>
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
		$('#strategy_form').submit();
	}
	//删除
	function delStrategy(id) {
		if(window.confirm("确定删除吗")){
			$.post(base._url+"/rest/strategy/delStrategy?id="+id,null,function(data){
				alert(data.msg);
				window.location.reload();
			},'json');
		}
	};
	
</script>
</body>
</html>