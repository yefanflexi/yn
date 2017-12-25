var ctx;
$(function() {
	ctx = $('#contextPathVal').val();
	var requestBidval = $('#bidByRequest').val();
	if (requestBidval != "-1") {
		$('#businessSelectId option').each(function() {
			if ($(this).val() == $.trim(requestBidval)) {
				$(this).attr("selected", "selected");
				return;
			}
		});
	}
	$('#selectProjectbtnId').click(function() {
		var bid = $('#businessSelectId').val();
		if (bid == '-1') {
			alert('请选择门店！');
			return;	
		}
		window.location.href = ctx + "/rest/system_setting/yhsyxm?bId=" + bid;
	});

});


// 单击添加数据
function insertToindexList(bId) {
	$.ajax({
		type : 'POST',
		url : ctx + "/rest/system_setting/insertToindexList",
		// async:false,
		data : {
			"bId" : bId
		},
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		success : function(data) {
			if (data.resultCode == '0000') {
				location.replace(location.href);
			} else {
				alert("添加失败");
			}
		}
	});
};
// 批量添加
function cz() {
	var list = [];
	$("#sj input[type=checkbox]:checked").each(function() {
		$(this).each(function() {
			list.push($(this).val() + "");
		});
	});
	var listVl = '';

	if (list) {
		for (var i = 0; i < list.length; i++) {
			if (i != list.length - 1)
				listVl += list[i] + ",";
			else
				listVl += list[i];
		}
	}
	if (list != "" && list != "") {
		$.ajax({
			type : 'POST',
			url : ctx + "/rest/system_setting/allInsertToindexList",
			data : {
				"list" : listVl
			},
			contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			success : function(data) {
				if (data.resultCode == '0000') {
					location.replace(location.href);
				} else {
					alert("添加失败");
				}
			}
		});
	}

};
//删除
function btnDelete(val) {
	$.ajax({
		type : 'POST',
		url : ctx + "/rest/system_setting/deleteByIdTohot",
		data : {
			"val" : val
		},
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		success : function(data) {
			if (data.resultCode == '0000') {
				location.replace(location.href);
			} else {
				alert("删除失败");
			}
		}
	});
};
//修改
function change(val){
	var text = "";
	text = $('#txt'+val).val();
	if(text != ""){
		$.ajax({
			type : 'POST',
			url : ctx + "/rest/system_setting/orderBy",
			data : {
				"val":val,
				"text":text
			},
			contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			success : function(data) {
				if (data.resultCode == '0000') {
					alert("修改成功");
					location.replace(location.href);
				} else {
					alert("修改失败");
				}
			}
		});
	}
};

//批量修改
function allChange(){
	var text = [];
	var id = [];
	var textvl = "";
	var idvl = "";
	$('#allChange').find('input[type=text]').each(function(){
		text.push($(this).val());
	});
	$('#allChange').find('span').each(function(){
		id.push($(this).html());
	});
	
	if(text){
		for(var i = 0 ; i < text.length ; i ++){
			if(i != text.length - 1){
				textvl += text[i] + ",";
			}else{
				textvl += text[i];
			}
		}
	};
	if(id){
		for(var i = 0 ; i < id.length ; i ++){
			if(i != id.length - 1){
				idvl += id[i] + ",";
			}else{
				idvl += id[i];
			}
		}
	};
	$.ajax({
		type : 'POST',
		url : ctx + "/rest/system_setting/allchange",
		data : {
			"text" : textvl,
			"id" : idvl
		},
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		success : function(data) {
			if (data.resultCode == '0000') {
				alert("修改成功");
				location.replace(location.href);
			} else {
				alert("修改失败");
			}
		}
	});
}
