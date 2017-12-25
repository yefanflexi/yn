/**
 * 基本通用类
 * 
 * @author 
 * @datetime 2016-4-7 17:32:09
 * 
 */
var base = {
	// 根路径
	_url : $("#baseurl").val(),
	
	// jsissionid
	_jsissionid:$("#jsissionid").val(),
	
	//layer警告框(无刷新)
	_alert:function(msg,time,state){
		layer.msg(msg, {
			  icon: state,
			  time: time //默认延迟（单位毫秒）
		});
	},
	
	//layer警告框(刷新本页面)
	_alert_reflush:function(msg,time,state){
		layer.msg(msg, {
			  icon: state,
			  time: time //默认延迟（单位毫秒）
			}, function(){
				window.location.reload();
		});
	},
	//layer警告框(跳转其他页面)
	_alert_goto:function(msg,time,state,url){
		layer.msg(msg, {
			icon: state,
			time: time //默认延迟（单位毫秒）
		}, function(){
			window.location.href=url;
		});
	},
	//layer警告框(清空表单)
	_alert_form:function(msg,time,state,formId){
		layer.msg(msg, {
			  icon: state,
			  time: time //默认延迟（单位毫秒）
			}, function(){
				document.getElementById(formId).reset();
				window.location.reload();
		});
	},
	//layer确认框
	_confirm:function(callback){
		layer.confirm('确定执行此操作吗?', {icon: 3, title:'提示'}, function(index){
			if(typeof callback =='function'){					
				callback();
			}
			layer.close(index);
		});
	},

	_custom:function(content){
		//layer自定义页
//		layer.open({
//		  type: 1,
//		  skin: 'layui-layer-demo', //样式类名
//		  closeBtn: 1, //不显示关闭按钮
//		  shift: 2,
//		  shadeClose: true, //开启遮罩关闭
//		  content: content
//		});
		
		//layer 页面层
		layer.open({
		  type: 1,
		  skin: 'layui-layer-rim', //加上边框
		  area: ['420px', '240px'], //宽高
		  content: content
		});
		
		
	},
	
	
	
	
	// 中文转码
	_utf16to8 : function(str) {
		var out, i, len, c;
		out = "";
		len = str.length;
		for (i = 0; i < len; i++) {
			c = str.charCodeAt(i);
			if ((c >= 0x0001) && (c <= 0x007F)) {
				out += str.charAt(i);
			} else if (c > 0x07FF) {
				out += String.fromCharCode(0xE0 | ((c >> 12) & 0x0F));
				out += String.fromCharCode(0x80 | ((c >> 6) & 0x3F));
				out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));
			} else {
				out += String.fromCharCode(0xC0 | ((c >> 6) & 0x1F));
				out += String.fromCharCode(0x80 | ((c >> 0) & 0x3F));
			}
		}
		return out;
	},
	
	//防止url缓存
	_timestamp:function (url){
		var getTimestamp=new Date().getTime();
		if(url.indexOf("?")>-1){
	        url=url+"&_="+getTimestamp;
	      }else{
	        url=url+"?_="+getTimestamp;
	      }
	      return url;
	},
	
	//刷新当前页
	refresh: function(){
		window.location.reload();
	},
	
	//字符串转化json
	paserJson:function(str){
		return $.parseJSON(str);
	},
	
	//回车绑定查询按钮
	bindEnter:function(obj){
		var button = document.getElementById('busbtn');
		if(obj.keyCode == 13){button.click();}
		},
	
	//ajax请求失败提示信息,刷新页面
	_ajax_error:'请求失败！',
	
	//token页面重新赋值
	_resetToken:function(tokenId,tokenValue){
		if(tokenValue){
			$("#"+tokenId).val(tokenValue);
		}
	}
}