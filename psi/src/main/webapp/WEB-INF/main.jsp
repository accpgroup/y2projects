<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html >
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8">

	<title>我的工作台</title>

	<meta name="description" content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
	<meta name="author" content="pixelcave">
	<meta name="robots" content="noindex, nofollow">

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

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
</head>
<body>
		<!-- 页面包装 -->
		<!-- 在PHP版本你可以设置以下选项从公司/配置文件 -->
		<!--
            	可用的类:
            'page-loading'      使页面预紧器
        -->
		<div id="page-wrapper" class="page-loading">
			<!-- 预紧器 -->
			<!-- 预紧器的功能 (初始化中 js/app.js) - pageLoading() -->
			<!-- 只有在使用页面预紧器启用从公司/配置(PHP版本)或类的页面添加#页面包装器元素(HTML版本) -->
			<div class="preloader">
				<div class="inner">
					<!-- Animation spinner for all modern browsers -->
					<div class="preloader-spinner themed-background hidden-lt-ie10"></div>

					<!-- Text for IE9 -->
					<h3 class="text-primary visible-lt-ie10"><strong>Loading..</strong></h3>
				</div>
			</div>
			<!-- END Preloader -->

			<!-- Page Container -->
			<!-- In the PHP version you can set the following options from inc/config file -->
			<!--
                Available #page-container classes:

                'sidebar-light'                                 主要的光栏(您可以添加它连同其他类)

                'sidebar-visible-lg-mini'                       主要栏浓缩——迷你导航(> 991 px)
                'sidebar-visible-lg-full'                       主要栏全——全导航(> 991 px)

                'sidebar-alt-visible-lg'                        选择栏可见默认情况下(> 991 px)(你可以把它连同其他类)

                'header-fixed-top'                              只有添加如果类header.navbar“navbar-fixed-top”了吗
                'header-fixed-bottom'                           只有添加如果类header.navbar“navbar-fixed-bottom”了吗

                'fixed-width'                                   固定宽度的布局(只能使用一个静态的头/主栏布局)

                'enable-cookies'                                记住积极的颜色主题使饼干当从侧边栏链接(你可以把它连同其他类)
            -->
			<div id="page-container" class="header-fixed-top sidebar-visible-lg-full">
				<!-- Alternative Sidebar -->
				<div id="sidebar-alt" tabindex="-1" aria-hidden="true">
					<!-- 只在静态布局切换选择栏按钮(可见) -->
					<!--<a href="javascript:void(0)" id="sidebar-alt-close" onclick="App.sidebar('toggle-sidebar-alt');">
						<i class="fa fa-cog"></i>
					</a>-->
				
					
					<!-- 包装器滚动功能 -->
					<div id="sidebar-scroll-alt">
						<!---->
					</div>
					<!-- END Wrapper for scrolling functionality -->
				</div>
				<!-- END Alternative Sidebar -->

				<!-- Main Sidebar -->
				<div id="sidebar">
					<!-- Sidebar Brand -->
					<div id="sidebar-brand" class="themed-background">
						<a href="index.html" class="sidebar-title">
							<i class="fa fa-cube"></i> <span class="sidebar-nav-mini-hide"><strong>XXX进销存</strong></span>
						</a>
					</div>
					<!-- END Sidebar Brand -->

					<!-- Wrapper for scrolling functionality -->
					<!--左侧导航栏-->
					<div id="sidebar-scroll">
						<!-- Sidebar Content -->
						<div class="sidebar-content">
							<!-- Sidebar Navigation -->
							<ul class="sidebar-nav">
								<!--<li>
									<a href="index.html" class=" active"><i class="gi gi-compass sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Dashboard</span></a>
								</li>-->
								<!--导航栏的分割点 ...   -->
								<li class="sidebar-separator">
									<i class="fa fa-ellipsis-h"></i>
								</li>

								<!--开始-->

								<!-- 订单 -->
								<li>
									<a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="sidebar-nav-icon gi gi-notes_2"></i><span class="sidebar-nav-mini-hide">订单</span></a>
									<ul>
										<li>
											<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>订单管理</a>
											<ul>
												<li>
													<a href="page_ready_blank.html">订货单</a>
												</li>
												<li>
													<a href="page_ready_error.html">退货单</a>
												</li>
											</ul>
										</li>
										<li>
											<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>订单统计</a>
											<ul>
												<li>
													<a href="page_ready_profile.html">出库/发货记录</a>
												</li>
												<li>
													<a href="page_ready_forum.html">订单商品统计（明细）</a>
												</li>
												<li>
													<a href="page_ready_pricing_tables.html">订单商品统计（按客户）</a>
												</li>
												<li>
													<a href="page_ready_article.html">订单商品统计（按商品）</a>
												</li>
												<li>
													<a href="page_ready_timeline.html">发货统计</a>
												</li>
											</ul>
										</li>
									</ul>
								</li>

								<!-- 商品 -->
								<li>
									<a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="sidebar-nav-icon gi gi-shopping_bag"></i><span class="sidebar-nav-mini-hide">商品</span></a>
									<ul>
										<!--商品管理-->
										<li>
											<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>商品管理</a>
											<ul>
												<li>
													<a href="page_ready_blank.html">商品列表</a>
												</li>
											</ul>
										</li>

										<!--库存管理-->
										<li>
											<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>库存管理</a>
											<ul>
												<li>
													<a href="page_ready_profile.html">商品库存</a>
												</li>
												<li>
													<a href="page_ready_profile.html">商品入库</a>
												</li>
												<li>
													<a href="page_ready_forum.html">商品出库</a>
												</li>
												<li>
													<a href="page_ready_forum.html">库存盘点</a>
												</li>
												<li>
													<a href="page_ready_forum.html">出入库明细</a>
												</li>
												<li>
													<a href="page_ready_pricing_tables.html">商品收发汇总</a>
												</li>
												<li>
													<a href="page_ready_article.html">成本调整</a>
												</li>
												<li>
													<a href="page_ready_timeline.html">期末结转</a>
												</li>
											</ul>
										</li>

										<!--采购管理-->
										<li>
											<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>采购管理</a>
											<ul>
												<li>
													<a href="page_ready_blank.html">供应商管理</a>
												</li>
												<li>
													<a href="page_ready_blank.html">智能采购</a>
												</li>
												<li>
													<a href="page_ready_blank.html">采购订单</a>
												</li>
												<li>
													<a href="page_ready_blank.html">采购待入库</a>
												</li>
											</ul>
										</li>
									</ul>
								</li>

								<!--客户-->
								<li>
									<a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="sidebar-nav-icon gi gi-group"></i><span class="sidebar-nav-mini-hide">客户</span></a>
									<ul>
										<!--客户管理-->
										<li>
											<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>客户管理</a>
											<ul>
												<li>
													<a href="page_ready_blank.html">客户列表</a>
												</li>
												<li>
													<a href="page_ready_blank.html">客户反馈</a>
												</li>
											</ul>
										</li>

										<!--服务管理-->
										<li>
											<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>服务管理</a>
											<ul>
												<li>
													<a href="page_ready_profile.html">XXXXX</a>
												</li>
												<li>
													<a href="page_ready_profile.html">XXXXXXXX</a>
												</li>
												<li>
													<a href="page_ready_forum.html">XXXXXXXX</a>
												</li>
											</ul>
										</li>
									</ul>
								</li>

								<!--资金-->
								<li>
									<a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="sidebar-nav-icon gi gi-coins"></i><span class="sidebar-nav-mini-hide">资金</span></a>
									<ul>
										<!--资金管理-->
										<li>
											<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>资金管理</a>
											<ul>
												<li>
													<a href="page_ready_blank.html">收款确认</a>
												</li>
												<li>
													<a href="page_ready_blank.html">资金账户</a>
												</li>
												<li>
													<a href="page_ready_blank.html">收款账户</a>
												</li>
											</ul>
										</li>

										<!--资金统计-->
										<li>
											<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>资金统计</a>
											<ul>
												<li>
													<a href="page_ready_profile.html">收支明细</a>
												</li>
												<li>
													<a href="page_ready_profile.html">订单收款统计</a>
											</ul>
											</li>
									</ul>
									</li>

									<!--营销-->
									<li>
										<a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="sidebar-nav-icon gi gi-shop_window"></i><span class="sidebar-nav-mini-hide">营销</span></a>
										<ul>
											<!--营销管理-->
											<li>
												<a href="#" class="sidebar-nav-submenu"><i class="fa fa-chevron-left sidebar-nav-indicator"></i>营销管理</a>

												<!--自己根据业务需求来填写相应的功能模块-->
												<ul>
													<li>
														<a href="page_ready_blank.html">XXXXXX</a>
													</li>
													<li>
														<a href="page_ready_blank.html">XXXXXX</a>
													</li>
													<li>
														<a href="page_ready_blank.html">XXXXXX</a>
													</li>
												</ul>
											</li>
										</ul>
									</li>

									<!--报表-->
									<li>
										<a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="sidebar-nav-icon gi gi-pie_chart"></i><span class="sidebar-nav-mini-hide">报表</span></a>
										<ul>

											<li>
												<a href="page_ready_blank.html">订单统计报表</a>
											</li>
											<li>
												<a href="page_ready_blank.html">地区统计报表</a>
											</li>
											<li>
												<a href="page_ready_blank.html">商品销售报表</a>
											</li>
											<li>
												<a href="page_ready_blank.html">客户订货报表</a>
											</li>
											<li>
												<a href="page_ready_blank.html">销售毛利统计报表</a>
											</li>
										</ul>
									</li>

									<!--结束-->

							</ul>
							<!-- END Sidebar Navigation -->

							<!-- 皮肤主题 -->
							<!-- Preview a theme on a page functionality can be found in js/app.js - colorThemePreview() -->
							<div class="sidebar-section sidebar-nav-mini-hide">
								<div class="sidebar-separator push">
									<i class="fa fa-ellipsis-h"></i>
								</div>
								<ul class="sidebar-themes clearfix">
									<li>
										<a href="javascript:void(0)" class="themed-background-default" data-toggle="tooltip" title="Default" data-theme="default" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
											<span class="section-side themed-background-dark-default"></span>
											<span class="section-content"></span>
										</a>
									</li>
									
									<li>
										<a href="javascript:void(0)" class="themed-background-default" data-toggle="tooltip" title="Default + Light Header" data-theme="default" data-theme-navbar="navbar-default" data-theme-sidebar="">
											<span class="section-header"></span>
											<span class="section-side themed-background-dark-default"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-classy" data-toggle="tooltip" title="Classy" data-theme="css/themes/classy.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
											<span class="section-side themed-background-dark-classy"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-social" data-toggle="tooltip" title="Social" data-theme="css/themes/social.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
											<span class="section-side themed-background-dark-social"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-flat" data-toggle="tooltip" title="Flat" data-theme="css/themes/flat.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
											<span class="section-side themed-background-dark-flat"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-amethyst" data-toggle="tooltip" title="Amethyst" data-theme="css/themes/amethyst.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
											<span class="section-side themed-background-dark-amethyst"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-creme" data-toggle="tooltip" title="Creme" data-theme="css/themes/creme.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
											<span class="section-side themed-background-dark-creme"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-passion" data-toggle="tooltip" title="Passion" data-theme="css/themes/passion.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="">
											<span class="section-side themed-background-dark-passion"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-default" data-toggle="tooltip" title="Default + Light Sidebar" data-theme="default" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
											<span class="section-side"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-classy" data-toggle="tooltip" title="Classy + Light Sidebar" data-theme="css/themes/classy.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
											<span class="section-side"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-social" data-toggle="tooltip" title="Social + Light Sidebar" data-theme="css/themes/social.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
											<span class="section-side"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-flat" data-toggle="tooltip" title="Flat + Light Sidebar" data-theme="css/themes/flat.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
											<span class="section-side"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-amethyst" data-toggle="tooltip" title="Amethyst + Light Sidebar" data-theme="css/themes/amethyst.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
											<span class="section-side"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-creme" data-toggle="tooltip" title="Creme + Light Sidebar" data-theme="css/themes/creme.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
											<span class="section-side"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-passion" data-toggle="tooltip" title="Passion + Light Sidebar" data-theme="css/themes/passion.css" data-theme-navbar="navbar-inverse" data-theme-sidebar="sidebar-light">
											<span class="section-side"></span>
											<span class="section-content"></span>
										</a>
									</li>
									
									<li>
										<a href="javascript:void(0)" class="themed-background-classy" data-toggle="tooltip" title="Classy + Light Header" data-theme="css/themes/classy.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
											<span class="section-header"></span>
											<span class="section-side themed-background-dark-classy"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-social" data-toggle="tooltip" title="Social + Light Header" data-theme="css/themes/social.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
											<span class="section-header"></span>
											<span class="section-side themed-background-dark-social"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-flat" data-toggle="tooltip" title="Flat + Light Header" data-theme="css/themes/flat.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
											<span class="section-header"></span>
											<span class="section-side themed-background-dark-flat"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-amethyst" data-toggle="tooltip" title="Amethyst + Light Header" data-theme="css/themes/amethyst.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
											<span class="section-header"></span>
											<span class="section-side themed-background-dark-amethyst"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-creme" data-toggle="tooltip" title="Creme + Light Header" data-theme="css/themes/creme.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
											<span class="section-header"></span>
											<span class="section-side themed-background-dark-creme"></span>
											<span class="section-content"></span>
										</a>
									</li>
									<li>
										<a href="javascript:void(0)" class="themed-background-passion" data-toggle="tooltip" title="Passion + Light Header" data-theme="css/themes/passion.css" data-theme-navbar="navbar-default" data-theme-sidebar="">
											<span class="section-header"></span>
											<span class="section-side themed-background-dark-passion"></span>
											<span class="section-content"></span>
										</a>
									</li>
								</ul>
							</div>
							<!-- END Color Themes -->
						</div>
						<!-- END Sidebar Content -->
					</div>
					<!-- END Wrapper for scrolling functionality -->

					<!-- Sidebar Extra Info -->
					<div id="sidebar-extra-info" class="sidebar-content sidebar-nav-mini-hide">
						<div class="push-bit">
							<span class="pull-right">
                                <a href="javascript:void(0)" class="text-muted"><i class="fa fa-plus"></i></a>
                            </span>
							<small><strong>78 GB</strong> / 100 GB</small>
						</div>
						<div class="progress progress-mini push-bit">
							<div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%"></div>
						</div>
						<div class="text-center">
							<small>Crafted with <i class="fa fa-heart text-danger"></i> by <a href="http://goo.gl/vNS3I" target="_blank">pixelcave</a></small><br>
							<small><span id="year-copy"></span> &copy; <a href="http://goo.gl/RcsdAh" target="_blank">AppUI 2.7</a></small>
						</div>
					</div>
					<!-- END Sidebar Extra Info -->
				</div>
				<!-- END Main Sidebar -->

				<!-- Main Container -->
				<div id="main-container">
					<!-- Header -->
					<!-- In the PHP version you can set the following options from inc/config file -->
					<!--
                        Available header.navbar classes:

                        'navbar-default'            for the default light header
                        'navbar-inverse'            for an alternative dark header

                        'navbar-fixed-top'          for a top fixed header (fixed main sidebar with scroll will be auto initialized, functionality can be found in js/app.js - handleSidebar())
                            'header-fixed-top'      has to be added on #page-container only if the class 'navbar-fixed-top' was added

                        'navbar-fixed-bottom'       for a bottom fixed header (fixed main sidebar with scroll will be auto initialized, functionality can be found in js/app.js - handleSidebar()))
                            'header-fixed-bottom'   has to be added on #page-container only if the class 'navbar-fixed-bottom' was added
                    -->
					<header class="navbar navbar-inverse navbar-fixed-top">
						<!-- Left Header Navigation -->
						<ul class="nav navbar-nav-custom">
							<!-- Main Sidebar Toggle Button -->
							<li>
								<a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar');this.blur();">
									<i class="fa fa-ellipsis-v fa-fw animation-fadeInRight" id="sidebar-toggle-mini"></i>
									<i class="fa fa-bars fa-fw animation-fadeInRight" id="sidebar-toggle-full"></i>
								</a>
							</li>
							<!-- END Main Sidebar Toggle Button -->

							<!-- Header Link -->
							<li class="hidden-xs animation-fadeInQuick">
								<a href=""><strong>WELCOME</strong></a>
							</li>
							<!-- END Header Link -->
						</ul>
						<!-- END Left Header Navigation -->

						<!-- Right Header Navigation -->
						<ul class="nav navbar-nav-custom pull-right">
							<!-- Search Form -->
							<!-- <li>
								<form action="page_ready_search_results.html" method="post" class="navbar-form-custom">
									<input type="text" id="top-search" name="top-search" class="form-control" placeholder="Search..">
								</form>
							</li> -->
							<!-- END Search Form -->

							<!---->
							<li class="dropdown">
								<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-cog"></i>
								</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li>
										<a href="page_app_email.html">
											<i class="fa fa-exclamation-circle fa-fw pull-right"></i> 基础资料
										</a>
									</li>

									<li>
										<a href="page_layout_static.html">
											<i class="fa fa-pencil-square-o fa-fw pull-right"></i> 辅助资料
										</a>
									</li>
									
									<li>
										<a href="<%=basePath %>sys/sys_main.htm">
											<i class="fa fa-gear fa-fw pull-right"></i> 系统设置
										</a>
									</li>
									
									<li>
										<a href="page_app_media.html">
											<i class="fa fa-book fa-fw pull-right"></i> 操作日志
										</a>
									</li>
									
								</ul>
							</li>
							<!-- END Alternative Sidebar Toggle Button -->

							<!-- 用户下拉 -->
							<li class="dropdown">
								<a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
									<!--显示用户图片-->

									<img src="img/placeholders/avatars/avatar9.jpg" alt="avatar">
								</a>
								<ul class="dropdown-menu dropdown-menu-right">
									<li class="dropdown-header">
										<strong>管理人：<span>敖文斌</span></strong>
									</li>
									<li>
										<a href="page_app_email.html">
											<i class="fa fa-envelope fa-fw pull-right"></i> 收件箱
										</a>
									</li>

									<li>
										<a href="page_app_media.html">
											<i class="fa fa-credit-card-alt fa-fw pull-right"></i> 账号信息
										</a>
									</li>
									<li class="divider">
										<li>
											<li>
												<a href="javascript:void(0)" onclick="App.sidebar('toggle-sidebar-alt');">
													<i class="gi gi-settings fa-fw pull-right"></i> 设置
												</a>
											</li>
											<li>
												<a href="page_ready_lock_screen.html">
													<i class="gi gi-lock fa-fw pull-right"></i> 锁屏
												</a>
											</li>
											<li>
												<a href="page_ready_login.html">
													<i class="fa fa-power-off fa-fw pull-right"></i> 退出
												</a>
											</li>
								</ul>
								</li>
								<!-- END User Dropdown -->
						</ul>
						<!-- END Right Header Navigation -->
					</header>
					<!-- END Header -->

					<!-- Page content -->
					<div id="page-content">

					</div>
					<!-- END Page Content -->
				</div>
				<!-- END Main Container -->
			</div>
			<!-- END Page Container -->
		</div>
		<!-- END Page Wrapper -->

		<!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
		<script src="<%=basePath %>js/vendor/jquery-2.2.4.min.js"></script>
		<script src="<%=basePath %>js/vendor/bootstrap.min.js"></script>
		<script src="<%=basePath %>js/plugins.js"></script>
		<script src="<%=basePath %>js/app.js"></script>

		<!-- Load and execute javascript code used only in this page -->
		<script src="<%=basePath %>js/pages/readyDashboard.js"></script>
		<script>
			$(function() {
				/*初始化仪表盘*/
				ReadyDashboard.init();
			});
		</script>
	</body>
</html>