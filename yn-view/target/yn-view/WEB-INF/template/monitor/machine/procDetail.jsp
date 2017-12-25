<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>飞思达大数据监控管理后台系统</title>
    <%@ include file="/common/nocahe_tld_resource.jsp" %>
    <style type="text/css">
    	.wrap{  
			width: 150px;   
			white-space: nowrap; 
			text-overflow: ellipsis;
			overflow: hidden;  
			cursor: pointer;
			}  
    </style>
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
					<span class="s1">进程详细</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_101"/>
                <form id="procDetail_form" action = "procDetail" method = "post" >
                	<input type="hidden" name="pageNo" id="xmgl_pageNo" >
                	<input type="hidden" name="machineId" id="machineId" value="${map.machineId }">
                	<input type="hidden" name="monitorId" id="monitorId" value="${map.monitorId }">
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
                					<input type="text" class="form-input" style="width: 170px" id="txtBeginTime" name="beginTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',minDate:'#F{$dp.$D(\'txtEndTime\',{d:-1})}' ,maxDate:'#F{$dp.$D(\'txtEndTime\')}'});" readonly="readonly" value="${beginTime }"/>&nbsp;&nbsp;至&nbsp;&nbsp;
			                  		<input type="text" class="form-input" style="width: 170px" id="txtEndTime" name="endTime" onclick="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss' ,minDate:'#F{$dp.$D(\'txtBeginTime\')}', maxDate:'new Date()'});" readonly="readonly" value="${endTime }"/>&nbsp;&nbsp;
                				</td>
                				<td>
                					<span>请求命令：</span>
                					<input type="text" class="form-input" style="width: 200px" name="reqCmd" value="${reqCmd }"/>
                				</td>
                			</tr>
                			<tr>
                				<td colspan="2">
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
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
                	<table class="tableSt1 main text-left">
                		<tr>
	                            <th width="130">请求命令</th>
	                            <th width="130">响应命令</th>
	                            <th width="130">命令时间</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
	                    		<td>${item.reqCmd }
	                    		</td>
	                    		<td class="wrap" id="showAll" onclick="showAll();">
	                    			${item.respCmd }
	                    		</td>
	                    		<td>${item.createTime }
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
	$('#procDetail_form').submit();
}
function showAll(){
	var str = $('#showAll').html();
	layer.open({
		  type: 1,
		  title: '响应命令详细内容',
		  area: ['600px', '450px'], //宽高
		  content: "<div style='margin: 10px'>"+str+"</div>"
		});
}
</script>
</body>
</html>