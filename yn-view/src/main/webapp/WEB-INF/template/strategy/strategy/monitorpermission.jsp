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
					<span class="s1">策略配置-${t5006Strategy.strategyName }</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30090"/>
                <input type="hidden" id="navVal2" value="30090_100"/>
                <div class="b-form">
                	<div class="head">
                		<div class="l bj-12">
                			<p>策略配置</p>
                		</div>
                		<div class="l bj-12 text-right">
                		</div>
                		<div class="clearBoth"></div>
                	</div>
                </div>
                <div class="b-form">
                	<ul style="padding-left: 50px">
                		<c:forEach items="#{t5009Monitors }" var="monitor">
                			<li style="padding-top: 5px">
                				<input type="checkbox" value="${monitor.id }" tag="${monitor.jurisdiction }" level=${monitor.warnLevel } name="monitor_permission_chk">&nbsp;&nbsp;<span style="display:inline-block; width:200px">${monitor.pName }</span>
<!--                 				<ul style="padding-left: 50px"> -->
<!--                 				</ul> -->
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
			var warnLevel = $this.attr("level");
			$this.parent().append(warnLevelSelectHtml($this.val()));
			$('#warnLevelSelect'+ $this.val()).val(warnLevel);
		}
		//判断如果监控内容是连接，默认选中并且不可取消，级别为普通
		if($this.attr("value") == '100000'){
			$this.attr("checked","true");
			$this.attr("disabled","disabled");
			var warnLevel = $this.attr("level");
			if(warnLevel == null || warnLevel=="undefined" || warnLevel==0){ 
				warnLevel = 1; 
			}
			$this.parent().append(warnLevelSelectHtml($this.val()));
			$('#warnLevelSelect'+ $this.val()).val(warnLevel);
		}
		
		$this.click(function(){
			if($this[0].checked){
				$this.parent().append(warnLevelSelectHtml($this.val()));
			}else{
				$('#warnLevelSelect'+ $this.val()).remove();
			}
		})
	})
	
	function warnLevelSelectHtml(monitorId){
		var h = "<span>" +
		    	"<select name='warnLevelSelect' id='warnLevelSelect"+ monitorId +"' style='width: 100px;border:1px solid'>" +
				"<option value='1'>普通</option>" +
				"<option value='2'>重要</option>" +
				"<option value='3'>紧急</option></select></span>";
		return h;
	}
	
	function per_submit(){
		var chk_value =[];
		$('input[name="monitor_permission_chk"]:checked').each(function(){ 
			chk_value.push($(this).val() + "_" + $("#warnLevelSelect"+$(this).val()).val()); 
		}); 
		$.post("monitor_permission_go?sId=${sId}&mIds="+chk_value, null, function(data){
			alert(data.msg);
			window.location.href='strategylist';
		}, 'json');
	}
</script>
</body>
</html>