<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
</head>
<body>
	<jsp:forward page="first.htm"></jsp:forward>
	<!--  -->
	<%-- <h1>测试</h1>
	<a href="<%=basePath %>test/load.do">进入控制器</a><br>
	<a href="<%=basePath %>test/testJsonPage.do">测试Json</a><br>
	<a href="<%=basePath %>sysCodeRule/getCode.do">测试获取编码</a><br> --%>
	<%-- <a href="<%=basePath %>login.htm">测试进入登录页面</a> --%>
</body>
</html>
