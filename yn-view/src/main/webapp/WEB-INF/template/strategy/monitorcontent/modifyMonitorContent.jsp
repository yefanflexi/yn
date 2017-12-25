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
					<span class="s1">修改监控内容</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30090"/>
                <input type="hidden" id="navVal2" value="30090_101"/>
                <form id="modifyMonitorContent_form" action ="modifyMonitorContent" method = "post" >
                	<div class="b-form">
                		<div class="head">
                			<div class="l bj-12">
                				<p>修改</p>
                			</div>
                			<div class="clearBoth"></div>
                		</div>
                		<input type="hidden" name="id" value="${t5009Monitor.id}"/>
                		<table class="tableSt2 main" >
                			<tr>
                				<td width="200px" align="center">
                					<span>编码</span>
                				</td>
	                			<td>
	                				${t5009Monitor.pCode}
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>所属任务</span>
                				</td>
	                			<td>
	                				<c:if test="${t5009Monitor.taskId == '0' }">
	                					<input type="hidden" name="taskId" value="${t5009Monitor.taskId}"/>
	                					系统任务
	                				</c:if>
	                				<c:if test="${t5009Monitor.taskId != '0' }">
		               					<select id="sel_taskId" name="taskId" class="form-input" style="width: 200px">
											<c:forEach items="${t5001Tasks}" var="item"> 
	        									<option value="${item.id}">  
	        									 	${item.taskName}  
	        									</option> 
	        								</c:forEach> 
										</select>
									</c:if>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>监控名</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="pName" value="${t5009Monitor.pName}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>进程</span>
                				</td>
	                			<td>
	                				<input type="hidden" name="pType" value="${t5009Monitor.pType}"/>
	                				<c:if test="${t5009Monitor.pType == 1 }">
	                					<input type="hidden" name="pCode" value="${t5009Monitor.pCode}"/>
	                					系统进程
	                				</c:if>
	                				<c:if test="${t5009Monitor.pType != 1 }">
										<select id="sel_pCode" name="pCode" class="form-input" style="width: 200px">
		                					<c:forEach items="${t5008Processes }" var="item">
		                						<option value="${item.procCode }">${item.procName }</option>
		                					</c:forEach>
										</select>
	                				</c:if>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>监控值</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:500px"  class="form-input" name="mValue" value="${t5009Monitor.mValue}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>预期值</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:400px"  class="form-input" name="mCmd" value="${t5009Monitor.mCmd}" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>执行时间</span>
                				</td>
	                			<td id="timeItem">
									<c:forEach var="t5019ExecRange" items="${t5019ExecRanges}" varStatus="status" >   
							      		<div  style="margin: 3px"><input type="text" class="form-input" style="width: 170px" id="txtBeginTime" value="${t5019ExecRange.beginTime}" name="beginTime" onclick="WdatePicker({dateFmt:'HH:mm'});" readonly="readonly"/>&nbsp;&nbsp;至&nbsp;&nbsp;
				                  		<input type="text" class="form-input" style="width: 170px" id="txtEndTime" value="${t5019ExecRange.endTime}" name="endTime" onclick="WdatePicker({dateFmt:'HH:mm'});" readonly="readonly"/>&nbsp;&nbsp;
				               			<button class="btn btn-green r3" type="button" id ="busbtn"><c:if test="${status.index == 0}">添加</c:if><c:if test="${status.index != 0}">删除</c:if></button></div>
									</c:forEach> 
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>刷新粒度</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="mInterval" value="${t5009Monitor.mInterval}" />(单位/S,默认60)
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>聚合粒度</span>
                				</td>
	                			<td>
	                				<select id="polyInterval" name="polyInterval" class="form-input" style="width: 200px">
	                					<option value="15">15</option>
	                					<option value="60">60</option>
	                					<option value="600">600</option>
	                				</select>(单位/S,默认60)
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>告警次数</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="sendCount" value="${t5009Monitor.sendCount}" />(0表示无限次数)
	                			</td>
                			</tr>
                		</table>
                	</div>
                	<input class="btn btn-black r3" type="submit" value="确定">
                	<input class="btn btn-black r3" type="button" value="返回" onclick="location='<%=path%>/rest/monitor/monitorcontent'">
                </form>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$("#sel_pCode").val('${t5009Monitor.pCode}')
$("#sel_taskId").val('${t5009Monitor.taskId}');
$("#sel_warnGroup").val('${t5009Monitor.warnGroup}');
// $("#sel_pType").val('${t5009Monitor.pType}');
$("#polyInterval").val('${t5009Monitor.polyInterval}');

//执行时间的增加和删除
$(document).ready(function() {  
	  
	var MaxInputs       = 8; //maximum input boxes allowed  
	var timeItem   = $("#timeItem"); //Input boxes wrapper ID  
	var busbtn       = $("#busbtn"); //Add button ID  
	  
	var x = timeItem.length; //initlal text box count  
	var FieldCount=1; //to keep track of text box added  
	  
	$(busbtn).click(function (e)  //on add input button click  
	{  
	        if(x <= MaxInputs) //max input box allowed  
	        {  
	            FieldCount++; //text box added increment  
	          //add input box  
	            $(timeItem).append('<div  style="margin: 3px"><input type="text" class="form-input" style="width: 170px" id="txtBeginTime" value="00:00" name="beginTime" onclick="WdatePicker({dateFmt:\''+'HH:mm'+'\'});" readonly="readonly"/>&nbsp;&nbsp;至&nbsp;&nbsp;&nbsp;'
                  		+ '<input type="text" class="form-input" style="width: 170px" id="txtEndTime" value="23:59" name="endTime" onclick="WdatePicker({dateFmt:\''+'HH:mm'+'\'});" readonly="readonly"/>&nbsp;&nbsp;&nbsp;'
                  		+ '<button class="btn btn-green r3" type="button" id ="busbtn">删除</button></div>');  
// 	            x++; //text box increment  
	        }  
	return false;  
	});  
	  
	$("body").on("click","#busbtn", function(e){ //user click on remove text  
// 	        if( x > 1 ) {  
	                $(this).parent('div').remove(); //remove text box  
// 	                x--; //decrement textbox  
// 	        }  
	return false;  
	})   
	  
	}); 
</script>
</body>
</html>