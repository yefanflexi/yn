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
	<style type="text/css">
	    	.wrap{  
				width: 150px;   
				white-space: nowrap; 
				text-overflow: ellipsis;
				overflow: hidden;  
				cursor: pointer;
				}  
    </style>
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
					<span class="s1">发送历史</span>
				</div>
				<div class="r">
				</div>
				<div class="clearBoth"></div>
			</div>
			<div class = "b-content-main">
				<!-- 主体内容开始 -->
				<input type="hidden" id="navVal1" value="30010"/>
                <input type="hidden" id="navVal2" value="30010_105"/>
                <form id="emailHistory_form" action = "emailHistoryList" method = "post" >
                	<input type="hidden" name="pageNo" id="xmgl_pageNo" >
                	<div class="b-form">
                		<div class="head">
                			<div class="l bj-12">
                				<p>查询</p>
                			</div>
                			<div class="clearBoth"></div>
                		</div>
                		<table class="tableSt2 main" >
                			<tr>
                				<td>
                					<span>接收人：</span>
                					<input type="text" class="form-input" style="width: 200px" name="recipients" value="${t6003EmailHistory.recipients }" />
                				</td>
                			</tr>
                			<tr>
                				<td colspan="2">
                					<button class="btn btn-black r3" type="submit" id ="busbtn" >查询</button>
                				</td>
                			</tr>
                		</table>
                	</div>
                </form>
                <div class="b-form">
                	<div class="head">
                		<div class="l bj-12">
                			<p>查询结果</p>
                		</div>
                		<div class="l bj-12 text-right">
                		</div>
                		<div class="clearBoth"></div>
                	</div>
                	<table class="tableSt1 main text-left" >
                		<tr>
                            <th width="140">接收人</th>
                            <th width="140">主题</th>
                            <th width="140">正文</th>
                            <th width="140">发送时间</th>
                            <th width="140">状态</th>
	                    </tr>
	                    <c:forEach items="${page.result }" var="item">
	                    	<tr>
								<td>${item.recipients }
	                    		</td>
	                    		<td>${item.subject }
	                    		</td>
	                    		<td class="wrap" id="showAll" onclick="showAll(this);">
	                    			${item.content }
	                    		</td>
	                    		<td>
	                    			${item.createTime }
	                    		</td>
	                    		<td>
	                    			 <c:if test="${item.status eq 0}">
	                    				发送成功
	                    			</c:if>
	                    			<c:if test="${item.status ne 0}">
	                    				发送失败
	                    			</c:if>
	                    		</td>
	                    	</tr>
	                    </c:forEach>
                	</table>
                </div>
                <!--  主体内容 end -->
                <div class="fun pageStyle"></div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$.pageLwFn("fun",'${page.pageNo}','${page.totalPages}','${page.pageSize}','${page.totalCount}');
	function fun(num){
		$("#xmgl_pageNo").val(num);
		$('#emailHistory_form').submit();
	}
	
	function showAll(obj){
		var str = $(obj).html();
		layer.open({
			  type: 1,
			  title: '邮件正文详细内容',
			  area: ['600px', '450px'], //宽高
			  content: "<div style='margin: 10px'>"+str+"</div>"
			});
	}
</script>
</body>
</html>