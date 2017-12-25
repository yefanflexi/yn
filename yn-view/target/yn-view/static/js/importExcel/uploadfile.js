/**
 * 创建联名卡：导入Excel数据
 * 
 * @author ZZF
 * @datetime 2016-6-25 17:42:58
 */
var upload={	
	//公共错误提示--文件上传出错时触发，参数由服务端程序返回
	uploadify_onUploadError : function(file, errorCode, errorMsg, errorString) { 
        // 手工取消不弹出提示  
        if (errorCode == SWFUpload.UPLOAD_ERROR.FILE_CANCELLED  
                || errorCode == SWFUpload.UPLOAD_ERROR.UPLOAD_STOPPED) { 
            return;  
        }  
        var msgText = "操作失败\n";  
        switch (errorCode) {  
            case SWFUpload.UPLOAD_ERROR.HTTP_ERROR:  
                msgText += "HTTP 错误\n" + errorMsg;  
                break;  
            case SWFUpload.UPLOAD_ERROR.MISSING_UPLOAD_URL:  
                msgText += "上传文件丢失，请重新上传";  
                break;  
            case SWFUpload.UPLOAD_ERROR.IO_ERROR:  
                msgText += "IO错误";  
                break;  
            case SWFUpload.UPLOAD_ERROR.SECURITY_ERROR:  
                msgText += "安全性错误\n" + errorMsg;  
                break;  
            case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:  
                msgText += "最多上传 " + this.settings.uploadLimit + "个";  
                break;  
            case SWFUpload.UPLOAD_ERROR.UPLOAD_FAILED:  
                msgText += errorMsg;  
                break;  
            case SWFUpload.UPLOAD_ERROR.SPECIFIED_FILE_ID_NOT_FOUND:  
                msgText += "找不到指定文件，请重新操作";  
                break;  
            case SWFUpload.UPLOAD_ERROR.FILE_VALIDATION_FAILED:  
                msgText += "参数错误";  
                break;  
            default:  
                msgText += "文件:" + file.name + "\n错误码:" + errorCode + "\n"  
                        + errorMsg + "\n" + errorString;  
        }     
        base._alert(msgText,3000,2);
	},		
	
	/*Excel文件上传--开始*/	
	//Excel文件上传--上传成功事件
	uploadify_onUploadSuccess : function(file, data, response) {
		//判断上传返回	
		if(data){
			base._alert('上传成功',2000,1);
			data = $.parseJSON(data);
			//上传路径
			var uploadPath = data.uploadPath;

			//火狐浏览器修改文件分隔符
			uploadPath = uploadPath.replace(new RegExp(/(\\)/g),'/');
			//赋值
			$("#excelPath").val(uploadPath);
			//移除样式			
			$("#excelPath").removeClass("error");
			//移除错误提示元素			
			$("#excelPath").next().remove("label");
			

		}else{
			base._alert('上传失败！',2000,1);
		}
	},
	
	//Excel文件上传--文件上传队列处理完毕后触发。
	uploadify_onQueueComplete : function(queueData){
		//TODO
	},
	
	//Excel文件上传--选择文件后向队列中添加每个上传任务时如果失败都会触发
	uploadify_onSelectError : function(file, errorCode, errorMsg) {
		var msgText = "";
		switch (errorCode) {
		
		case SWFUpload.QUEUE_ERROR.QUEUE_LIMIT_EXCEEDED:
			msgText += "上传的文件数量已经超出系统限制的" + $('#uploadify').uploadify('settings', 'queueSizeLimit') + "个文件！";
			break;
		case SWFUpload.QUEUE_ERROR.FILE_EXCEEDS_SIZE_LIMIT:
			msgText += "文件 [" + file.name + "] 大小超出系统限制的" + $('#uploadify').uploadify('settings', 'fileSizeLimit') + "大小！";
			break;
		case SWFUpload.QUEUE_ERROR.ZERO_BYTE_FILE:
			msgText += "文件大小为0";
			break;
		case SWFUpload.QUEUE_ERROR.INVALID_FILETYPE:
			msgText += "文件格式不正确，仅限 " + this.settings.fileTypeExts;
			break;
		default:
			msgText += "错误代码：" + errorCode + "\n" + errorMsg;
		}
		//错误显示模块
		$("#save_msg").html("");
		$("#save_msg").append(msgText);
		setTimeout(function(){
			$("#save_msg").html("");
		}, 3000);
		
	},
	
	//Excel文件上传--执行上传
	uploadify : function(){
   		$("#uploadify").uploadify({
             'swf'            : base._url+'/static/uploadify/uploadify.swf',
             'uploader'       : base._url+'/rest/uploadExcel;jsessionid='+base._jsissionid,//后台处理的请求
             'queueID'        : 'fileQueue',//与下面的id对应
             'queueSizeLimit' :  1,//队列显示最大 
             'uploadLimit'    :  100,//最多上传数量
             'fileTypeDesc'   : '请选择.xlsx.xls类型下表格文件', // 设置选择文件对话框中的提示文本   
             'fileTypeExts'   : '*.xlsx;*.xls', //控制可上传文件的扩展名，启用本项时需同时声明fileDesc fileSizeLimit
             'fileSizeLimit'  : 0, // 文件大小限制
             'auto'           : false,//是否自动上传
             'method'         :	'Post',// 上传方法
             'multi'          : false, //是否支持多文件上传
             'removeTimeout'  : 0, // 从完成到移除的时间间隔
             'successTimeout' : 60, //成功响应时间
             'buttonText'     : '浏览', //按钮名称
     		 'onFallback'     : function() {//检测FLASH失败调用
    			$("#save_msg").html("");
    			$("#save_msg").append("您未安装FLASH控件，无法上传图片！请安装FLASH控件后再试。");
    			$('#save_warning').show().delay(5000).hide(0);
     		 },
     		'overrideEvents'  :['onUploadSuccess','onUploadError','onSelectError'],// 重写事件
     		'onUploadSuccess' : upload.uploadify_onUploadSuccess,
     		'onUploadError'   : upload.uploadify_onUploadError,
     		'onSelectError'   : upload.uploadify_onSelectError,
     		'onQueueComplete' : upload.uploadify_onQueueComplete
         });
	},
	
	batch_upload :function(){
		$("#uploadify").uploadify('upload','*');
	},
	init:function(){
		upload.uploadify();
	}
}

$(function(){
	upload.init();
});