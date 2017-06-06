<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主题</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
</head>
<body>
	<ul class="sidebar-themes clearfix">
		<li><a href="javascript:void(0)"
			class="themed-background-default" data-toggle="tooltip"
			title="Default" data-theme="default"
			data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
				<span class="section-side themed-background-dark-default"></span> <span
				class="section-content"></span>
		</a></li>

		<li><a href="javascript:void(0)"
			class="themed-background-default" data-toggle="tooltip"
			title="Default + Light Header" data-theme="default"
			data-theme-navbar="navbar-default" data-theme-sidebar=""> <span
				class="section-header"></span> <span
				class="section-side themed-background-dark-default"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-classy"
			data-toggle="tooltip" title="Classy"
			data-theme="css/themes/classy.css" data-theme-navbar="navbar-inverse"
			data-theme-sidebar=""> <span
				class="section-side themed-background-dark-classy"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-social"
			data-toggle="tooltip" title="Social"
			data-theme="css/themes/social.css" data-theme-navbar="navbar-inverse"
			data-theme-sidebar=""> <span
				class="section-side themed-background-dark-social"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-flat"
			data-toggle="tooltip" title="Flat" data-theme="css/themes/flat.css"
			data-theme-navbar="navbar-inverse" data-theme-sidebar=""> <span
				class="section-side themed-background-dark-flat"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)"
			class="themed-background-amethyst" data-toggle="tooltip"
			title="Amethyst" data-theme="css/themes/amethyst.css"
			data-theme-navbar="navbar-inverse" data-theme-sidebar=""> <span
				class="section-side themed-background-dark-amethyst"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-creme"
			data-toggle="tooltip" title="Creme" data-theme="css/themes/creme.css"
			data-theme-navbar="navbar-inverse" data-theme-sidebar=""> <span
				class="section-side themed-background-dark-creme"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)"
			class="themed-background-passion" data-toggle="tooltip"
			title="Passion" data-theme="css/themes/passion.css"
			data-theme-navbar="navbar-inverse" data-theme-sidebar=""> <span
				class="section-side themed-background-dark-passion"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)"
			class="themed-background-default" data-toggle="tooltip"
			title="Default + Light Sidebar" data-theme="default"
			data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
				<span class="section-side"></span> <span class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-classy"
			data-toggle="tooltip" title="Classy + Light Sidebar"
			data-theme="css/themes/classy.css" data-theme-navbar="navbar-inverse"
			data-theme-sidebar="sidebar-light"> <span class="section-side"></span>
				<span class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-social"
			data-toggle="tooltip" title="Social + Light Sidebar"
			data-theme="css/themes/social.css" data-theme-navbar="navbar-inverse"
			data-theme-sidebar="sidebar-light"> <span class="section-side"></span>
				<span class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-flat"
			data-toggle="tooltip" title="Flat + Light Sidebar"
			data-theme="css/themes/flat.css" data-theme-navbar="navbar-inverse"
			data-theme-sidebar="sidebar-light"> <span class="section-side"></span>
				<span class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)"
			class="themed-background-amethyst" data-toggle="tooltip"
			title="Amethyst + Light Sidebar" data-theme="css/themes/amethyst.css"
			data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
				<span class="section-side"></span> <span class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-creme"
			data-toggle="tooltip" title="Creme + Light Sidebar"
			data-theme="css/themes/creme.css" data-theme-navbar="navbar-inverse"
			data-theme-sidebar="sidebar-light"> <span class="section-side"></span>
				<span class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)"
			class="themed-background-passion" data-toggle="tooltip"
			title="Passion + Light Sidebar" data-theme="css/themes/passion.css"
			data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
				<span class="section-side"></span> <span class="section-content"></span>
		</a></li>

		<li><a href="javascript:void(0)" class="themed-background-classy"
			data-toggle="tooltip" title="Classy + Light Header"
			data-theme="css/themes/classy.css" data-theme-navbar="navbar-default"
			data-theme-sidebar=""> <span class="section-header"></span> <span
				class="section-side themed-background-dark-classy"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-social"
			data-toggle="tooltip" title="Social + Light Header"
			data-theme="css/themes/social.css" data-theme-navbar="navbar-default"
			data-theme-sidebar=""> <span class="section-header"></span> <span
				class="section-side themed-background-dark-social"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-flat"
			data-toggle="tooltip" title="Flat + Light Header"
			data-theme="css/themes/flat.css" data-theme-navbar="navbar-default"
			data-theme-sidebar=""> <span class="section-header"></span> <span
				class="section-side themed-background-dark-flat"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)"
			class="themed-background-amethyst" data-toggle="tooltip"
			title="Amethyst + Light Header" data-theme="css/themes/amethyst.css"
			data-theme-navbar="navbar-default" data-theme-sidebar=""> <span
				class="section-header"></span> <span
				class="section-side themed-background-dark-amethyst"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)" class="themed-background-creme"
			data-toggle="tooltip" title="Creme + Light Header"
			data-theme="css/themes/creme.css" data-theme-navbar="navbar-default"
			data-theme-sidebar=""> <span class="section-header"></span> <span
				class="section-side themed-background-dark-creme"></span> <span
				class="section-content"></span>
		</a></li>
		<li><a href="javascript:void(0)"
			class="themed-background-passion" data-toggle="tooltip"
			title="Passion + Light Header" data-theme="css/themes/passion.css"
			data-theme-navbar="navbar-default" data-theme-sidebar=""> <span
				class="section-header"></span> <span
				class="section-side themed-background-dark-passion"></span> <span
				class="section-content"></span>
		</a></li>
	</ul>
</body>
</html>