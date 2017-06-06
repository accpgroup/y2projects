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

	<jsp:include page="common.jsp" flush="true"/>
	
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
							<!-- 侧边栏导航 -->
							<jsp:include page="menu.jsp"/>
							<!-- 侧边栏导航结束 -->

							<!-- 皮肤主题 -->
							<!-- 预览页面上的一个主题功能可以在js /app.js - colorThemePreview() -->
							<div class="sidebar-section sidebar-nav-mini-hide">
								<div class="sidebar-separator push">
									<i class="fa fa-ellipsis-h"></i>
								</div>
								<!-- 选择主题开始 -->
								<jsp:include page="theme.jsp"/>
								<!-- 选择主题结束 -->
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
						<!-- 头部信息 -->
						<jsp:include page="header.jsp"/>
					</header>
					<!-- END Header -->

					<!-- Page content -->
					<div id="page-content">
						<!-- 内容 -->
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