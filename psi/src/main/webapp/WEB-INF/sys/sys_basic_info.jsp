<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if IE 9]>   <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">

<title>基础资料</title>

<meta name="description"
	content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<jsp:include page="/common.jsp" />
</head>

<body>
	<div id="page-wrapper" class="page-loading">

		<div class="preloader">
			<div class="inner">
				<div class="preloader-spinner themed-background hidden-lt-ie10"></div>

				<h3 class="text-primary visible-lt-ie10">
					<strong>Loading..</strong>
				</h3>
			</div>
		</div>
		<!-- END Preloader -->

		<div id="page-container" class="sidebar-visible-lg-full">
			<!-- Alternative Sidebar -->
			<div id="sidebar-alt" tabindex="-1" aria-hidden="true">
				<!-- Toggle Alternative Sidebar Button (visible only in static layout) -->
				<a href="javascript:void(0)" id="sidebar-alt-close"
					onclick="App.sidebar('toggle-sidebar-alt');"><i
					class="fa fa-times"></i></a>
			</div>
			<!-- END Alternative Sidebar -->

			<!-- 主要的侧边栏 -->
			<div id="sidebar">
				<!-- 侧边栏的品牌 -->
				<div id="sidebar-brand" class="themed-background">
					<a href="index.html" class="sidebar-title"> <i
						class="fa fa-cube"></i> <span class="sidebar-nav-mini-hide">易进销</span>
					</a>
				</div>
				<!-- 结束侧边栏的品牌 -->

				<div id="sidebar-scroll">
					<!-- 侧边栏内容 -->
					<div class="sidebar-content">

						<ul class="sidebar-nav">
						
							<li class="active">
								<a href="#" class="sidebar-nav-menu"><i class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i class="gi gi-more_items sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">基础资料</span></a>
								<ul>
									<li>
										<a href="<%=basePath%>sys/company_info.htm" target="mainFrm">公司信息</a>
									</li>
									<li>
										<a href="<%=basePath%>sys/user_list.htm" target="mainFrm">员工管理</a>
									</li>
									<li>
										<a href="<%=basePath%>sys/dept_list.htm" target="mainFrm">部门设置</a>
									</li>
									<li>
										<a href="<%=basePath%>sys/role_list.htm" target="mainFrm">角色权限设置</a>
									</li>
								</ul>
							</li>
							
						</ul>

					</div>
					<!-- 结束侧边栏内容 -->

				</div>

			</div>
			<!-- 结束主要的侧边栏 -->


			<!-- 主要的容器 -->
			<div id="main-container">

				<header class="navbar navbar-inverse">
					<!-- Left Header Navigation -->
					<ul class="nav navbar-nav-custom">
						<!-- Main Sidebar Toggle Button -->
						<li><a href="javascript:void(0)"
							onclick="App.sidebar('toggle-sidebar');this.blur();"> <i
								class="fa fa-ellipsis-v fa-fw animation-fadeInRight"
								id="sidebar-toggle-mini"></i> <i
								class="fa fa-bars fa-fw animation-fadeInRight"
								id="sidebar-toggle-full"></i>
						</a></li>
						<!-- END Main Sidebar Toggle Button -->
					</ul>
					<!-- END Left Header Navigation -->

					<!-- Right Header Navigation -->
					<ul class="nav navbar-nav-custom pull-right">
						<!-- User Dropdown -->
						<li class="dropdown"><a href="<%=basePath%>first.htm"><i
								class="hi hi-home"></i>&nbsp;&nbsp;&nbsp;<span>返回主页</span></a></li>
						<!-- END User Dropdown -->
					</ul>
					<!-- END Right Header Navigation -->
				</header>
				<!-- END Header -->

				<!-- 页面内容 -->
				<div id="page-content">
				
					<iframe style="width: 100%; height: auto; margin: -8px;"
						src="index.html" name="mainFrm" id="mainFrm" frameborder="0"></iframe>
					
				</div>
				<!-- END 页面内容 -->

			</div>
			<!-- 结束主要的容器 -->

		</div>
		<!-- END Page Container -->
	</div>
	<!-- END Page Wrapper -->

	<!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
	<script src="<%=basePath%>js/vendor/jquery-2.2.4.min.js"></script>
	<script src="<%=basePath%>js/vendor/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/plugins.js"></script>
	<script src="<%=basePath%>js/app.js"></script>

	<script src="<%=basePath%>js/pages/readyDashboard.js"></script>
	<script>
		$(function() {
			/*初始化仪表盘*/
			ReadyDashboard.init();
		});
	</script>
</body>

</html>