<%@ page pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!-- js中获取项目根路径 -->
<input type="hidden" id="baseurl" value="<%=path%>"></input>
<!-- 当前jsessionid 图片上传js使用 -->
<input type="hidden" value="<%= session.getId() %>" id="jsissionid"></input>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/js/layui-v2.2.2/layui/css/layui.css"  />--%>
<!-- 基础样式 -->
<%--<link rel="stylesheet" type="text/css"  href="<%=path %>/static/js/layui-v1.0.9_rls/layui/css/layui.css"/>--%>
<link rel="stylesheet" type="text/css"  href="<%=path %>/static/css/style.fn.css"/>
<link rel="stylesheet" type="text/css"  href="<%=path %>/static/css/alicon/iconfont.css"/>
<!-- 文件上传样式 -->
<link rel="stylesheet" type="text/css" href="<%=path %>/static/uploadify/uploadify.css"  />
<!-- JqueryEasyUI图标样式 -->
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/icon.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/black/tree.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/bootstrap/tree.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/default/tree.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/gray/tree.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/material/tree.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/metro/tree.css"  /> --%>

<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/black/linkbutton.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/bootstrap/linkbutton.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/default/linkbutton.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/gray/linkbutton.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/material/linkbutton.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/metro/linkbutton.css"  /> --%>

<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/black/panel.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/bootstrap/panel.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/default/panel.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/gray/panel.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/material/panel.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/metro/panel.css"  /> --%>

<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/black/textbox.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/bootstrap/textbox.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/default/textbox.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/gray/textbox.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/material/textbox.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/metro/textbox.css"  /> --%>

<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/black/combo.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/bootstrap/combo.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/default/combo.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/gray/combo.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/material/combo.css"  /> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=path %>/static/css/easyui/themes/metro/combo.css"  /> --%>
<!-- JqueryEasyUI样式 -->
<script src="<%=path %>/static/js/jquery.min.js"></script>
<script src="<%=path %>/static/js/main.js?a=133"></script>
<!-- Layer 弹窗插件 -->
<script src="<%=path %>/static/js/layer/layer.js"></script>
<!-- 上传插件 -->
<script type="text/javascript" src="<%=path %>/static/uploadify/jquery.uploadify.js"></script>
<!-- 基础js工具类 -->
<script src="<%=path %>/static/js/base.js"></script>
<!-- 导航菜单 -->
<jsp:include flush="true" page="/common/navVal.jsp"/>
<%-- <script src="<%=path %>/static/js/navVal.js"></script> --%>
<!-- 二维码插件 -->
<script src="<%=path %>/static/js/qrcode/jquery.qrcode.min.js"></script>
<!-- 时间插件 -->
<script type="text/javascript" src="<%=path %>/static/js/My97DatePicker/WdatePicker.js"></script>
