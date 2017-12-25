<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>飞思达大数据监控管理后台系统</title>
    
    <link rel="stylesheet" type="text/css"  href="<%=path %>/static/js/layui-v1.0.9_rls/layui/css/layui.css"/>
<%--     <%@ include file="/common/nocahe_tld_resource.jsp" %> --%>

	<style type="text/css">
		.task_h2{width: 500px}
		.mach_h2{width: 370px}
		.montiro_h2{width: 338px}
	</style>
</head>
<!-- 绑定查询事件 -->
<body>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>告警配置</legend>
</fieldset>
<div class="layui-collapse task_h2" lay-accordion="">
  <div class="layui-colla-item">
	<div style="float: right; margin: 6px">
		<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
	</div>
    <h2 class="layui-colla-title" style="width: 402px">SQM任务1</h2>
    <div class="layui-colla-content layui-show">
    
      <div class="layui-collapse" lay-accordion="">
        <div class="layui-colla-item">
          <div style="float: right; margin: 6px">
			<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
		  </div>
          <h2 class="layui-colla-title mach_h2">设备120</h2>
          <div class="layui-colla-content">
            
            <div class="layui-collapse" lay-accordion="">
              <div class="layui-colla-item">
              	<div style="float: right; margin: 6px">
					<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
				</div>
                <h2 class="layui-colla-title montiro_h2" >Spark</h2>
              </div>
              
              <div class="layui-colla-item">
              	<div style="float: right; margin: 6px">
					<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
				</div>
                <h2 class="layui-colla-title montiro_h2" >HDFS</h2>
              </div>
              
            </div>
            
          </div>
        </div>
        
        <div class="layui-colla-item">
          <div style="float: right; margin: 6px">
			<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
		  </div>
          <h2 class="layui-colla-title mach_h2">设备121</h2>
          <div class="layui-colla-content">
            
            <div class="layui-collapse" lay-accordion="">
              <div class="layui-colla-item">
              	<div style="float: right; margin: 6px">
					<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
				</div>
                <h2 class="layui-colla-title montiro_h2" >Spark</h2>
              </div>
              
              <div class="layui-colla-item">
              	<div style="float: right; margin: 6px">
					<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
				</div>
                <h2 class="layui-colla-title montiro_h2" >HDFS</h2>
              </div>
            </div>
            
          </div>
        </div>
        
        <div class="layui-colla-item">
          <div style="float: right; margin: 6px">
			<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
		  </div>
          <h2 class="layui-colla-title mach_h2">设备122</h2>
          <div class="layui-colla-content">
            
            <div class="layui-collapse" lay-accordion="">
              <div class="layui-colla-item">
              	<div style="float: right; margin: 6px">
					<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
				</div>
                <h2 class="layui-colla-title montiro_h2" >Spark</h2>
              </div>
              
              <div class="layui-colla-item">
              	<div style="float: right; margin: 6px">
					<button class="layui-btn layui-btn-normal layui-btn-small"  onclick="a_add_email()"><i class="layui-icon"></i></button>
				</div>
                <h2 class="layui-colla-title montiro_h2" >HDFS</h2>
              </div>
            </div>
            
          </div>
        </div>
        
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

function a_add_email(){
	alert("4345345");
}
</script>

</body>
</html>