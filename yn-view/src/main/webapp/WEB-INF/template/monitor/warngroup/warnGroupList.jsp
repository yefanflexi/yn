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
					<span class="s1">告警组管理</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_103"/>
                <form id="warnGroup_form" action = "warnGroupList" method = "post" >
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
                					<span>告警组名称：</span>
                					<input type="text" class="form-input" style="width: 200px" name="groupName" value="${t5013WarnGroup.groupName }" />
                				</td>
                			</tr>
                			<tr>
                				<td colspan="2">
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
                					<shiro:hasPermission name="fun_30010_103_1">
                						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/email/toAddWarnGroup'">添加</button>
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
	                            <th width="140">告警组</th>
	                            <th width="140">告警组描述</th>
	                            <th width="140">排序</th>
	                            <th width="140">操作</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
	                    		<td>${item.groupName }
	                    		</td>
	                    		<td>${item.groupDesc }
	                    		</td>
	                    		<td>${item.orderBy }
	                    		</td>
	                    		<td>
	                    			  <shiro:hasPermission name="fun_30010_103_4">
	                    			  	<a href="warnGroupConfigure?id=${item.id }" target="_blank" >告警组配置</a>
			                          </shiro:hasPermission>
	                    			  <shiro:hasPermission name="fun_30010_103_2">
			                          	<a href="javascript:void(0)" onclick="location='<%=path%>/rest/email/toModifyWarnGroup?id=${item.id }'" target="_blank" >修改</a>
			                          </shiro:hasPermission>
			                          <shiro:hasPermission name="fun_30010_103_3">
			                            <a href="javascript:void(0)" onclick="delWarnGroup('${item.id}')" target="_blank" >删除</a>
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
		$('#warnGroup_form').submit();
	}
	//删除
	function delWarnGroup(id) {
		if(window.confirm("确定删除吗")){
			$.post(base._url+"/rest/email/delWarnGroup?id="+id,null,function(data){
				alert(data.msg);
				window.location.reload();
			},'json');
		}
	};
	
</script>
</body>
</html>