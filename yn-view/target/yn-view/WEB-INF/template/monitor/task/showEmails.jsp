<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>飞思达大数据监控管理后台系统</title>
    <%@ include file="/common/nocahe_tld_resource.jsp" %>
    <link rel="stylesheet" href="<%=path %>/static/css/jquery.bigautocomplete.css" type="text/css">
    <script type="text/javascript" src="<%=path %>/static/js/jquery.bigautocomplete.js"></script>
    <style type="text/css">
    	.chk_btn{line-height: 24px; width: 73px; height: 24px; padding: 0px}
    	.div_content{margin: 10px; border: solid 0px red;}
    </style>
</head>
<!-- 绑定查询事件 -->
<body style="width: 600px; height:403px; min-width: 600px">
	<div class="b-wrap" style="padding-top: 0px">
		<form action="showEmails" method="post" id="layer_email_form">
			<div style="display: none;">
				<input type="hidden" id="taskId" name="taskId" value="${taskId }"/>
				<input type="hidden" id="machineId" name="machineId" value="${machineId }"/>
				<input type="hidden" id="procCode" name="procCode" value="${procCode }"/>
				<input type="hidden" id="type" name="type" value="${type }"/>
				<input type="hidden" id="chk_email_name_txt" name="chkEmailNameTxt" value=""/>
			</div>
			<div class="div_content" id="chk_btn_div">
			</div>
			<div class="div_content">
				<input type="text" id="kw" name="kw" style="width: 150px; height: 30px; padding: 0px 5px" class="form-input" AUTOCOMPLETE="off" value="${kw }"/>
				<button class="btn btn-green r3" type="button" id ="busbtn_search" style="height: 26px; padding-top: 2px" onclick="btn_search()">查询</button>
				<button class="btn btn-green r3" type="button" id ="busbtn_save" style="height: 26px; padding-top: 2px" onclick="btn_save()">保存</button>
			</div>
			<div class="div_content" >
				<table class="tableSt1 main text-center" style=" display: block;width: 580px; height: 320px;overflow: scroll;">
					<tr>
						<th width="66">告警人</th>
						<th width="255">邮箱</th>
						<th width="188">操作</th>
					</tr>
					<c:forEach items="${warnEmails }" var="warnEmail">
		       			<tr >
		       				<td>
		       					${warnEmail.emailName }
		       				</td>
		       				<td>
		       					${warnEmail.emailUsername }
		       				</td>
		       				<td>
		       					<button type="button" class="layui-btn layui-btn-primary layui-btn-small" onclick="add_email('${warnEmail.id}', '${warnEmail.emailName }', '1')"><i class="layui-icon"></i></button>
		       				</td>
		       			</tr>
					</c:forEach>
		  		</table>
			</div>
		</form>
	</div>

<script type="text/javascript">

$(function(){
	init_chk();
	
	kwsearch();
});

function init_chk(){
	var t5016TaskWarnMailsArr =  new Array();
	<c:forEach items="${t5016TaskWarnMails}" var="t">  
		t5016TaskWarnMailsArr.push('${t.emailId}_${t.emailName}'); //js中可以使用此标签，将EL表达式中的值push到数组中  
	</c:forEach>
	
	$.each(t5016TaskWarnMailsArr, function(i, email){
		var es = email.split("_");
		add_email(es[0], es[1], '0');
	})
}

function kwsearch(){
	$("#kw").bigAutocomplete({
		width:$("#kw").width() + 10,
		url:'search',
		callback:function(data){
			btn_search();
		}
	});
}

function delete_email(id, name){
	$("#btn_id_" + id).remove();
}

function btn_search(){
	//获取选择的告警人
	$("#chk_email_name_txt").val(getCheckedIdName());
	$("#layer_email_form").submit();
}

function btn_save(){
	//显示加载层
	var loadIndex = layer.load(1, {
	  shade: [0.5,'#fff'] //0.1透明度的白色背景
	});
	
	var taskId = $('#taskId').val();
	var machineId = $('#machineId').val();
	var procCode = $('#procCode').val();
	var type = $('#type').val();
	var emailIds = getCheckedId();
	
	$.post(base._url+"/rest/task/addWarnEmails?taskId="+
			taskId+"&machineId="+machineId+"&procCode="+procCode+"&emailIds="+emailIds+"&type="+type,
			null,function(data){
			//关闭层
			layer.close(loadIndex);
			
			var index = parent.layer.getFrameIndex(window.name);
		    var msg = data.msg;
		    var icon = data.code == 0 ? 1 : 5;
			layer.msg(msg, {
				icon : icon,
				time : 1500
			}, function() {
				parent.layer.close(index);
			});
		}, 'json');

	}

	function getCheckedId() {
		var chkBtnIds = $("button[id^='btn_id_']");
		var emailIds = "";
		$.each(chkBtnIds, function(i, btn) {
			if (emailIds != "") {
				emailIds += ",";
			}
			emailIds += $(btn).attr("id_v")
		})
		return emailIds
	}
	
	function getCheckedIdName(){
		//id_name,id_name
		var chkBtns = $("button[id^='btn_id_']");
		var emailIdNames = "";
		$.each(chkBtns, function(i, btn) {
			if (emailIdNames != "") {
				emailIdNames += ",";
			}
			emailIdNames += $(btn).attr("id_v") + "_" + $(btn).attr("name_v");
		})
		return emailIdNames
	}

	function add_email(id, name, type) {
		//先判断 是否已经存在
		var chk_btn = $("#btn_id_" + id);
		if(!chk_btn.text()){
			//判断数量
			var chkBtnIds = $("button[id^='btn_id_']");
			var addCount = 5;
			if(chkBtnIds.length < addCount){
				var chk_btn_html = "<button id=\"btn_id_"
					+ id
					+ "\" id_v=\""
					+ id
					+ "\" name_v=\""+name+"\" tag=\""+type+"\" type=\"button\" class=\"layui-btn layui-btn-small layui-btn-normal chk_btn\" onclick=\"delete_email('"
					+ id + "','"+name+"')\"><i class=\"layui-icon\">" + name
					+ "</i></button>";
				$("#chk_btn_div").append(chk_btn_html);
			}else{
				layer.msg('最多只加添加'+addCount+'个告警人~', {
					icon : 6,
					time : 1500
				});
			}
		}else{
			layer.msg('已添加过，不要重复添加哦~', {
				icon : 6,
				time : 1500
			});
		}
		
	}
	
</script>
</body>
</html>