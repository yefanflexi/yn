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
					<span class="s1">监控内容管理</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30090"/>
                <input type="hidden" id="navVal2" value="30090_101"/>
                <form id="monitorcontent_form" action = "monitorcontent" method = "post" >
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
                					<span>监控内容名：</span>
                					<input type="text" class="form-input" style="width: 200px" name="pName" value="${t5009Monitor.pName }"/>
                				</td>
                			</tr>
                			<tr>
                				<td>
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
                					<shiro:hasPermission name="fun_30090_101_1">
                						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/monitor/toAddMonitorContent'">添加</button>
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
	                            <th width="20">编码</th>
	                            <th width="50">监控名</th>
	                            <th width="40">任务名</th>
<!-- 	                            <th width="100">告警组</th> -->
	                            <th width="30">进程</th>
	                            <th width="200">监控值</th>
	                            <th width="100">预期值</th>
	                            <th width="10">刷新粒度（单位/s）</th>
	                            <th width="10">聚合粒度（单位/s）</th>
	                            <th width="20">操作</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
	                    		<td>${item.pCode }
	                    		</td>
	                    		<td>${item.pName }
	                    		</td>
	                    		<td>${item.taskName }
	                    		</td>
<%-- 	                    		<td>${item.groupName } --%>
<!-- 	                    		</td> -->
	                    		<td>${item.procName }
	                    		</td>
	                    		<td>${item.mValue}
	                    		</td>
	                    		<td>${item.mCmd}
	                    		</td>
	                    		<td>${item.mInterval}
	                    		</td>
	                    		<td>${item.polyInterval}
	                    		</td>
	                    		<td>
	                    			  <shiro:hasPermission name="fun_30090_101_2">
			                          	<a href="javascript:void(0)" onclick="location='<%=path%>/rest/monitor/toModifyMonitorContent?id=${item.id }'" target="_blank" >修改</a>
			                          </shiro:hasPermission>
			                          <shiro:hasPermission name="fun_30090_101_3">
			                            <a href="javascript:void(0)" onclick="delMonitorContent('${item.id}')" target="_blank" >删除</a>
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
		$('#monitorcontent_form').submit();
	}
	//删除
	function delMonitorContent(id) {
		if(window.confirm("确定删除吗")){
			$.post(base._url+"/rest/monitor/delMonitorContent?id="+id,null,function(data){
				alert(data.msg);
				window.location.reload();
			},'json');
		}
	};
	
</script>
</body>
</html>