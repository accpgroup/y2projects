<!-- 公用的文件 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!-- 图标 -->
<!-- 下面的图标可以替换为你自己的,他们所使用的桌面和移动浏览器 -->
<link rel="shortcut icon" href="<%=basePath %>img/favicon.png">
<link rel="apple-touch-icon" href="<%=basePath %>img/icon57.png" sizes="57x57">
<link rel="apple-touch-icon" href="<%=basePath %>img/icon72.png" sizes="72x72">
<link rel="apple-touch-icon" href="<%=basePath %>img/icon76.png" sizes="76x76">
<link rel="apple-touch-icon" href="<%=basePath %>img/icon114.png" sizes="114x114">
<link rel="apple-touch-icon" href="<%=basePath %>img/icon120.png" sizes="120x120">
<link rel="apple-touch-icon" href="<%=basePath %>img/icon144.png" sizes="144x144">
<link rel="apple-touch-icon" href="<%=basePath %>img/icon152.png" sizes="152x152">
<link rel="apple-touch-icon" href="<%=basePath %>img/icon180.png" sizes="180x180">

<link rel="stylesheet" href="<%=basePath %>css/bootstrap.min.css">
<link rel="stylesheet" href="<%=basePath %>css/plugins.css">
<link rel="stylesheet" href="<%=basePath %>css/main.css">
<link rel="stylesheet" href="<%=basePath %>css/themes.css">
<script src="<%=basePath %>js/vendor/modernizr-3.3.1.min.js"></script>


