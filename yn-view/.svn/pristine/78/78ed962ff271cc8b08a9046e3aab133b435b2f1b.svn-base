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
					<span class="s1">任务配置</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="10"/>
                <input type="hidden" id="navVal2" value="10_1"/>
                <div class="b-form">
                	<div class="head">
                		<div class="l bj-12">
                			<p>权限配置</p>
                		</div>
                		<div class="l bj-12 text-right">
                		</div>
                		<div class="clearBoth"></div>
                	</div>
                </div>
                <div class="b-form" >
                	<ul style="padding-left: 50px">
                		<c:forEach items="#{t5001Tasks }" var="task">
                			<li style="padding-top: 5px">
                				<input type="checkbox" value="${task.id }" tag="${task.jurisdiction }" name="task_configure_chk">${task.taskName }
                			</li>
                		</c:forEach>
                	</ul>
                </div>
                <div class="b-form" style="text-align: center;">
                	<button class="btn btn-green r3" type="button" style="width: 100px; height: 50px" id ="busbtn" onclick="javascript:per_submit()">确&nbsp;&nbsp;&nbsp;&nbsp;定</button>
                </div>
                <!--  主体内容 end -->
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(":checkbox").each(function(i,chk){
		var $this = $(chk);
		if($this.attr("tag") == 1){
			$this.attr("checked","true"); 
		}
	})
	
	function per_submit(){
		var chk_value =[];
		$('input[name="task_configure_chk"]:checked').each(function(){ 
			chk_value.push($(this).val()); 
		}); 
		$.post("task_configure_go?uId=${uId}&tIds="+chk_value, null, function(data){
			alert(data.msg);
			window.location.href='yhgl';
		}, 'json');
	}
</script>
</body>
</html>