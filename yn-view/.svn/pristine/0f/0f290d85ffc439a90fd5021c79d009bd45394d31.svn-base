/**
 * 数据导入
 * @author zzf
 * @datetime 2016-6-26 20:57:39
 */
var sjdr = {
	//表单验证
	validate:function(){
		$("#sjdr").validate({
			rules : {
				//文件路径
				excelPath : {
					required : true
				},
				//行号
				conlumnNum : {
					required : true
				},
				//城市
				city : {
					required : true
				},
				//门店
				importBId : {
					required : true
				}
			},
			messages : {
				excelPath : {
					required : b_form_error("请上传文件！")
				},
				conlumnNum : {
					required : b_form_error("请输入列序号（由0开始）！")
				},
				city : {
					required : b_form_error("请选择城市！")
				},
				importBId : {
					required : b_form_error("请选择门店！")
				}

			},
			errorPlacement: function (error, element) { 
				error.appendTo(element.parent());
			},
			submitHandler : function(form) {
				sjdr.importExcel();
			}
		});
	},
	
	//执行数据导入
	importExcel : function() {
		$.ajax({
			type : "POST",
			async : false,
			url : base._url + "/rest/data/importData",
			data : $("#sjdr").serialize(),
			success : function(msg) {
				if ('0000' == msg.res.resultCode) {
					base._alert_reflush(msg.res.resultMessage, 2000, 1);
					// base._alert_goto(msg.res.resultMessage, 2000,
					// 1,"mdgl");
				} else {
					// 提交错误，重置token令牌
					// base._resetToken("token1", msg.token);
					base._alert(msg.res.resultMessage, 3000, 2);
				}
			},
			error : function(XMLHttpRequest, textStatus, errorThrown) {
				base._alert(base._ajax_error, 3000, 2);
			}
		});
				
	},
	
	//根据城市id加载门店列表
	loadBusinessesByCityId:function(_this){
		if(_this.val()){
			$.ajax({
				type : "POST",
				async : false,
				url : base._url + "/rest/data/loadBusinessesByCityId",
				data : {
					cId:_this.val()
				},
				success : function(msg) {
					var html="<option value=''>请选择</option>";
					for(var i=0,len=msg.busies.length;i<len;i++){
						html+="<option value='"+msg.busies[i].id+"'>"+msg.busies[i].bName+"</option>";
					}
					$("#importBId").html('');
					$("#importBId").append(html);
				},
				error : function(XMLHttpRequest, textStatus, errorThrown) {
					base._alert(base._ajax_error, 3000, 2);
				}
			});
		}
	},
	
	//初始化
	init:function(){
		sjdr.validate();
	}
	
};

$(function(){
	sjdr.init();
});


