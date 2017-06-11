<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if IE 9]> <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">

<title>修改员工信息</title>

<meta name="description" content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<jsp:include page="/common.jsp"/>
</head>

<body style="background-color: white;">
	从数据库加载的角色信息是：<font color="red">${requestScope.role.name }</font>

	<br/>
	修改角色信息<button onclick="history.go(-1);">取消</button>
</body>
</html>