<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <title>飞思达大数据监控管理后台系统</title>
    <%@ include file="/common/nocahe_tld_resource.jsp" %>
</head>
<body>
<div class="b-body">
    <div class="i-login in">
        <div class="box">
            <div class="h">
                <span>飞思达大数据监控管理后台系统</span>
            </div>
            <div class="m">
            <form action="<%=path %>/rest/user/doLogin" method="post">
				<input type="text" class="form-input" name="userId" placeholder="请输入账号" />
                <input type="password" class="form-input" name="password" placeholder="请输入密码" />
                <button class="btn btn-green r5 width big" type="submit">登录</button>
            </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
