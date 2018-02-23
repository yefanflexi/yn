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
		.main_task{width: 700px}
		.task_h2{width: 602px}
		.mach_h2{width: 570px}
		.montiro_h2{width: 538px}
		.show_email_name_chk{padding-left: 20px; font-size: 10px}
	</style>
    <script src="<%=path %>/static/js/echarts.js"></script>
    
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
		<input id="handle_status" value="" hidden="hidden">
		<div class="b-content">
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_100"/>
			
				<div class="b-form">
					<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
					  <legend>告警配置-${task.taskName}</legend>
					</fieldset>
					 
					<div class="layui-tab">
					  <ul class="layui-tab-title">
					    <li class="layui-this">设备</li>
					    <li>进程</li>
					  </ul>
					  <div class="layui-tab-content">
					    <div class="layui-tab-item layui-show">
					    	<!--  设备主体内容 end -->
					    	<div class="layui-collapse main_task" lay-accordion="">
							  <div class="layui-colla-item">
								<div style="float: right; margin: 6px">
									<button id="${task.id }" class="layui-btn layui-btn-normal layui-btn-small" onclick="showEmails('${task.id }','','','1')"><i class="layui-icon"></i></button>
								</div>
							    <h2 class="layui-colla-title task_h2" >${task.taskName}<span class="show_email_name_chk">${task.emailNameChk }</span></h2>
							    <div class="layui-colla-content layui-show">
							    
							      <div class="layui-collapse" lay-accordion="">
							        <c:forEach items="${machines }" var="machine">
							        	<div class="layui-colla-item">
								          <div style="float: right; margin: 6px">
											<button class="layui-btn layui-btn-normal layui-btn-small" onclick="showEmails('${task.id }','${machine.id}','','2')"><i class="layui-icon"></i></button>
										  </div>
								          <h2 class="layui-colla-title mach_h2">${machine.maName}<span class="show_email_name_chk">${machine.emailNameChk }</span></h2>
								          <div class="layui-colla-content">
								            
								            <div class="layui-collapse" lay-accordion="">
								              <c:forEach items="${machine.t5008Processes }" var="process">
								              	<div class="layui-colla-item">
									              	<div style="float: right; margin: 6px">
														<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="showEmails('${task.id }','${machine.id}','${process.procCode}','3')"><i class="layui-icon"></i></button>
													</div>
									                <h2 class="layui-colla-title montiro_h2" >${process.procName}<span class="show_email_name_chk">${process.emailNameChk }</span></h2>
								              	</div>
								              </c:forEach>
								              
								            </div>
								            
								          </div>
								        </div>
							        </c:forEach>
							      </div>
							    </div>
							  </div>
							</div>
					    </div>
					    <div class="layui-tab-item">
					  		  <!--  进程主体内容 end -->
					  		<div class="layui-collapse main_task" lay-accordion="">
							  <div class="layui-colla-item">
							  	<c:forEach items="${t5008Processes }" var="process">
									<div style="float: right; margin: 6px">
										<button id=${process.id } class="layui-btn layui-btn-normal layui-btn-small" onclick="showEmails('${task.id }','','${process.procCode }','4')"><i class="layui-icon"></i></button>
									</div>
								    <h2 class="layui-colla-title task_h2" >${process.procName }<span class="show_email_name_chk">${process.emailNameChk }</span></h2>
							    </c:forEach>
							  </div>
							</div>
							
					    </div>
					  </div>
					</div>
				</div>
				
                <!--  主体内容 end -->
            </div>
		</div>
	</div>
</div>


<script src="<%=path %>/static/js/layui-v1.0.9_rls/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的 -->
<script>
layui.use(['element', 'layer'], function(){
//   var element = layui.element();
//   var layer = layui.layer;
  
//   //监听折叠
//   element.on('collapse(test111)', function(data){
//     layer.msg('展开状态：'+ data.show);
//   });
});

function showEmails(taskId, machineId, procCode, type){
	layer.open({
		  id:'insert-form',
		  type: 2,
		  title: '配置邮箱',
		  area: ['600px', '450px'], //宽高
		  end:function(){
// 			  history.go(0);
		  },
		  content: base._url + "/rest/task/showEmails?taskId=" + 
				  taskId + "&machineId=" + machineId + "&procCode=" + procCode + "&type=" + type,
		});
}
</script>
</body>
</html>
