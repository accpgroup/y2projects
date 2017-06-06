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
<title>头部</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
</head>
<body>
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

		<!-- Header Link -->
		<li class="hidden-xs animation-fadeInQuick"><a href=""><strong>WELCOME</strong></a>
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
		<li class="dropdown"><a href="javascript:void(0)"
			class="dropdown-toggle" data-toggle="dropdown"> <i
				class="fa fa-cog"></i>
		</a>
			<ul class="dropdown-menu dropdown-menu-right">
				<li><a href="page_app_email.html"> <i
						class="fa fa-exclamation-circle fa-fw pull-right"></i> 基础资料
				</a></li>

				<li><a href="page_layout_static.html"> <i
						class="fa fa-pencil-square-o fa-fw pull-right"></i> 辅助资料
				</a></li>

				<li><a href="<%=basePath%>sys/sys_main.htm"> <i
						class="fa fa-gear fa-fw pull-right"></i> 系统设置
				</a></li>

				<li><a href="page_app_media.html"> <i
						class="fa fa-book fa-fw pull-right"></i> 操作日志
				</a></li>

			</ul></li>
		<!-- 最终选择栏切换按钮 -->

		<!-- 用户下拉 -->
		<li class="dropdown"><a href="javascript:void(0)"
			class="dropdown-toggle" data-toggle="dropdown"> <!--显示用户图片--> <img
				src="img/placeholders/avatars/avatar9.jpg" alt="avatar">
		</a>
			<ul class="dropdown-menu dropdown-menu-right">
				<li class="dropdown-header"><strong>管理人：<span>敖文斌</span></strong>
				</li>
				<li><a href="page_app_email.html"> <i
						class="fa fa-envelope fa-fw pull-right"></i> 收件箱
				</a></li>

				<li><a href="page_app_media.html"> <i
						class="fa fa-credit-card-alt fa-fw pull-right"></i> 账号信息
				</a></li>
				<li class="divider">
				<li>
				<li><a href="javascript:void(0)"
					onclick="App.sidebar('toggle-sidebar-alt');"> <i
						class="gi gi-settings fa-fw pull-right"></i> 设置
				</a></li>
				<li><a href="page_ready_lock_screen.html"> <i
						class="gi gi-lock fa-fw pull-right"></i> 锁屏
				</a></li>
				<li><a href="page_ready_login.html"> <i
						class="fa fa-power-off fa-fw pull-right"></i> 退出
				</a></li>
			</ul></li>
		<!-- 最终用户下拉 -->
	</ul>
	<!-- 最终正确的标题导航 -->
</body>
</html>