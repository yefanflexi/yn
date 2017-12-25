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
					<span class="s1">添加监控内容</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30090"/>
                <input type="hidden" id="navVal2" value="30090_101"/>
                <form id="addMonitorContent_form" action ="addMonitorContent" method = "post" onsubmit="return check()">
                	<div class="b-form">
                		<div class="head">
                			<div class="l bj-12">
                				<p>新增</p>
                			</div>
                			<div class="clearBoth"></div>
                		</div>
                		<table class="tableSt2 main" >
                			<tr>
                				<td width="200px" align="center">
                					<span>所属任务</span>
                				</td>
	                			<td>
	               					<select id="sel_taskId" name="taskId" class="form-input" style="width: 200px">
										<c:forEach items="${t5001Tasks}" var="item"> 
        									<option value="${item.id}">  
        									 	${item.taskName}  
        									</option> 
        								</c:forEach> 
									</select>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>监控名</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="pName" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>进程</span>
                				</td>
	                			<td>
	                				<select id="sel_pCode" name="pCode" class="form-input" style="width: 200px">
	                					<c:forEach items="${t5008Processes }" var="item">
	                						<option value="${item.procCode }">${item.procName }</option>
	                					</c:forEach>
									</select>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>监控值</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:400px"  class="form-input" name="mValue" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>预期值</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:500px"  class="form-input" name="mCmd" />
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>执行时间</span>
                				</td>
	                			<td id="timeItem">
	                				<div  style="margin: 3px"><input type="text" class="form-input" style="width: 170px" id="txtBeginTime" value="00:00" name="beginTime" onclick="WdatePicker({dateFmt:'HH:mm'});" readonly="readonly"/>&nbsp;&nbsp;至&nbsp;&nbsp;
			                  		<input type="text" class="form-input" style="width: 170px" id="txtEndTime" value="23:59" name="endTime" onclick="WdatePicker({dateFmt:'HH:mm'});" readonly="readonly"/>&nbsp;&nbsp;
			               			<button class="btn btn-green r3" type="button" id ="busbtn">添加</button></div>
	                			</td>
                			</tr>
                			<tr>
                				<td width="200px" align="center">
                					<span>刷新粒度</span>
                				</td>
	                			<td>
	                				<input type="text" style="width:200px"  class="form-input" name="mInterval" />(单位/S,默认60)
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
	                				<input type="text" style="width:200px"  class="form-input" name="sendCount" />(0表示无限次数)
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
	            x++; //text box increment  
	        }  
	return false;  
	});  
	  
	$("body").on("click","#busbtn", function(e){ //user click on remove text  
	        if( x > 1 ) {  
	                $(this).parent('div').remove(); //remove text box  
	                x--; //decrement textbox  
	        }  
	return false;  
	})   
	  
	}); 
</script>
</body>
</html>