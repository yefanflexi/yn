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
					<span class="s1">参数管理</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="10"/>
                <input type="hidden" id="navVal2" value="10_4"/>
                <form id="parameter_form" action = "parameterList" method = "post" >
<!--                 	<input type="hidden" name="pageNo" id="xmgl_pageNo" > -->
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
<!--                 					<span>邮箱名称：</span> -->
<%--                 					<input type="text" class="form-input" style="width: 200px" name="emailUsername" value="${t5003WarnEmail.emailUsername }"/> --%>
<!--                 				</td> -->
<!--                 			</tr> -->
<!--                 			<tr> -->
<!--                 				<td colspan="2"> -->
<!--                 					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button> -->
<%--                 					<shiro:hasPermission name="fun_30010_102_1"> --%>
<%--                 						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/email/toAddEmail'">添加</button> --%>
<%-- 			                        </shiro:hasPermission> --%>
<!--                 				</td> -->
<!--                 			</tr> -->
<!--                 		</table> -->
<!--                 	</div> -->
					<shiro:hasPermission name="fun_10_4_1">
                						<button class="btn btn-green r3" type="button" id ="busbtn" onclick="location='<%=path%>/rest/parm/toAddParm'">添加</button>
			        </shiro:hasPermission>
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
	                            <th width="50">参数名字</th>
	                            <th width="140">参数值</th>
	                            <th width="50">操作</th>
	                    </tr>
	                    <c:forEach items="${t1001Systems }" var="item">
	                    	<tr>
	                    		<td align="right">${item.sName }
	                    	<input type="hidden" id="id_" value="${item.id }"/>
	                    		</td>
	                    		<td>
	                    			<input id="sValue" type="text" class="form-input" style="width: 400px" name="" value="${item.sValue }"/>
	                    		</td>
	                    		<td>
	                    			<shiro:hasPermission name="fun_10_4_3">
			                            <a href="javascript:void(0)" onclick="delParm('${item.id}')" target="_blank" >删除</a>
			                        </shiro:hasPermission>
	                    		</td>
	                    	</tr>
	                    </c:forEach>
                	</table>
                	<div class="b-form" style="text-align: center;">
                		<shiro:hasPermission name="fun_10_4_2">
                			<button class="btn btn-green r3" type="button" style="width: 100px; height: 50px" id ="busbtn" onclick="modifyParm();">保&nbsp;&nbsp;&nbsp;&nbsp;存</button>
                		</shiro:hasPermission>
                	</div>
                </div>
                <!--  主体内容 end -->
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	
	function modifyParm(){
		var ids = $('[id=id_');
		var sValues = $('[id=sValue');
		var idsStr = "";
		var sValuesStr = "";
		for(var i = 0; i < ids.length; i++){
			if(i < ids.length - 1){
				idsStr = idsStr + ids[i].value + ',';
				sValuesStr = sValuesStr + sValues[i].value + ',';
			}else if(i = ids.length - 1){
				idsStr = idsStr + ids[i].value;
				sValuesStr = sValuesStr + sValues[i].value;
			}
		}
		window.location='<%=path%>/rest/parm/modifyParameter?ids=' + idsStr + '&sValues=' + sValuesStr;
	}
	
	//删除
	function delParm(id) {
		if(window.confirm("确定删除吗")){
			$.post(base._url+"/rest/parm/delParm?id="+id,null,function(data){
				alert(data.msg);
				window.location.reload();
			},'json');
		}
	};
	
</script>
</body>
</html>