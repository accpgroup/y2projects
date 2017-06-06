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
<title>菜单</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
</head>
<body>
	<ul class="sidebar-nav">
		<!--<li>
									<a href="index.html" class=" active"><i class="gi gi-compass sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Dashboard</span></a>
								</li>-->
		<!--导航栏的分割点 ...   -->
		<li class="sidebar-separator"><i class="fa fa-ellipsis-h"></i></li>

		<!--开始-->

		<!-- 订单 -->
		<li><a href="#" class="sidebar-nav-menu"><i
				class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
				class="sidebar-nav-icon gi gi-notes_2"></i><span
				class="sidebar-nav-mini-hide">订单</span></a>
			<ul>
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>订单管理</a>
					<ul>
						<li><a href="test/email.do" target="mainFrm">订货单</a></li>
						<li><a href="page_ready_error.html">退货单</a></li>
					</ul></li>
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>订单统计</a>
					<ul>
						<li><a href="page_ready_profile.html">出库/发货记录</a></li>
						<li><a href="page_ready_forum.html">订单商品统计（明细）</a></li>
						<li><a href="page_ready_pricing_tables.html">订单商品统计（按客户）</a>
						</li>
						<li><a href="page_ready_article.html">订单商品统计（按商品）</a></li>
						<li><a href="page_ready_timeline.html">发货统计</a></li>
					</ul></li>
			</ul></li>

		<!-- 商品 -->
		<li><a href="#" class="sidebar-nav-menu"><i
				class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
				class="sidebar-nav-icon gi gi-shopping_bag"></i><span
				class="sidebar-nav-mini-hide">商品</span></a>
			<ul>
				<!--商品管理-->
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>商品管理</a>
					<ul>
						<li><a href="page_ready_blank.html">商品列表</a></li>
					</ul></li>

				<!--库存管理-->
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>库存管理</a>
					<ul>
						<li><a href="page_ready_profile.html">商品库存</a></li>
						<li><a href="page_ready_profile.html">商品入库</a></li>
						<li><a href="page_ready_forum.html">商品出库</a></li>
						<li><a href="page_ready_forum.html">库存盘点</a></li>
						<li><a href="page_ready_forum.html">出入库明细</a></li>
						<li><a href="page_ready_pricing_tables.html">商品收发汇总</a></li>
						<li><a href="page_ready_article.html">成本调整</a></li>
						<li><a href="page_ready_timeline.html">期末结转</a></li>
					</ul></li>

				<!--采购管理-->
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>采购管理</a>
					<ul>
						<li><a href="page_ready_blank.html">供应商管理</a></li>
						<li><a href="page_ready_blank.html">智能采购</a></li>
						<li><a href="page_ready_blank.html">采购订单</a></li>
						<li><a href="page_ready_blank.html">采购待入库</a></li>
					</ul></li>
			</ul></li>

		<!--客户-->
		<li><a href="#" class="sidebar-nav-menu"><i
				class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
				class="sidebar-nav-icon gi gi-group"></i><span
				class="sidebar-nav-mini-hide">客户</span></a>
			<ul>
				<!--客户管理-->
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>客户管理</a>
					<ul>
						<li><a href="page_ready_blank.html">客户列表</a></li>
						<li><a href="page_ready_blank.html">客户反馈</a></li>
					</ul></li>

				<!--服务管理-->
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>服务管理</a>
					<ul>
						<li><a href="page_ready_profile.html">XXXXX</a></li>
						<li><a href="page_ready_profile.html">XXXXXXXX</a></li>
						<li><a href="page_ready_forum.html">XXXXXXXX</a></li>
					</ul></li>
			</ul></li>

		<!--资金-->
		<li><a href="#" class="sidebar-nav-menu"><i
				class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
				class="sidebar-nav-icon gi gi-coins"></i><span
				class="sidebar-nav-mini-hide">资金</span></a>
			<ul>
				<!--资金管理-->
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>资金管理</a>
					<ul>
						<li><a href="page_ready_blank.html">收款确认</a></li>
						<li><a href="page_ready_blank.html">资金账户</a></li>
						<li><a href="page_ready_blank.html">收款账户</a></li>
					</ul></li>

				<!--资金统计-->
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>资金统计</a>
					<ul>
						<li><a href="page_ready_profile.html">收支明细</a></li>
						<li><a href="page_ready_profile.html">订单收款统计</a>
					</ul></li>
			</ul></li>

		<!--营销-->
		<li><a href="#" class="sidebar-nav-menu"><i
				class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
				class="sidebar-nav-icon gi gi-shop_window"></i><span
				class="sidebar-nav-mini-hide">营销</span></a>
			<ul>
				<!--营销管理-->
				<li><a href="#" class="sidebar-nav-submenu"><i
						class="fa fa-chevron-left sidebar-nav-indicator"></i>营销管理</a> <!--自己根据业务需求来填写相应的功能模块-->
					<ul>
						<li><a href="page_ready_blank.html">XXXXXX</a></li>
						<li><a href="page_ready_blank.html">XXXXXX</a></li>
						<li><a href="page_ready_blank.html">XXXXXX</a></li>
					</ul></li>
			</ul></li>

		<!--报表-->
		<li><a href="#" class="sidebar-nav-menu"><i
				class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i><i
				class="sidebar-nav-icon gi gi-pie_chart"></i><span
				class="sidebar-nav-mini-hide">报表</span></a>
			<ul>

				<li><a href="page_ready_blank.html">订单统计报表</a></li>
				<li><a href="page_ready_blank.html">地区统计报表</a></li>
				<li><a href="page_ready_blank.html">商品销售报表</a></li>
				<li><a href="page_ready_blank.html">客户订货报表</a></li>
				<li><a href="page_ready_blank.html">销售毛利统计报表</a></li>
			</ul></li>

		<!--结束-->
	</ul>
</body>
</html>