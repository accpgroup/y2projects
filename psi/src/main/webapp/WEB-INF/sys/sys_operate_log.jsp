<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
	<!--<![endif]-->

	<head>
		<meta charset="utf-8">

		<title>系统设置</title>

		<meta name="description" content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
		<meta name="author" content="pixelcave">
		<meta name="robots" content="noindex, nofollow">

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<jsp:include page="/common.jsp" />
	</head>

	<body>
		<div id="page-wrapper" class="page-loading">
			<div class="preloader">
				<div class="inner">
					<!-- 所有现代浏览器动画转轮 -->
					<div class="preloader-spinner themed-background hidden-lt-ie10"></div>
					<!-- Text for IE9 -->
					<h3 class="text-primary visible-lt-ie10"><strong>Loading..</strong></h3>
				</div>
			</div>
			<!-- END Preloader -->
				
			<div id="page-container" class="sidebar-visible-lg-full">
				<div id="page-content" style="background-color: white">
					<div class="block-title">
                        <h2>系统操作日志</h2>
                    </div>
                     <div class="table-responsive">
						<!-- 表格开始 -->
						<table id="example-datatable" class="table table-striped table-bordered table-vcenter">
							<thead>
								<tr>
									<th class="text-center" width="10%">操作人</th>
									<th width="20%">时间</th>
									<th width="20%">操作类型</th>
									<th width="60%">操作日志</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="text-center">1</td>
									<td><strong>AppUser1</strong></td>
									<td>app.user1@example.com</td>
									<td><span class="label label-info">On hold..</span></td>
								</tr>
							</tbody>
						</table>
					</div>
					
					
				</div>
			</div>
		</div>

		<!-- jQuery,引导,jQuery插件和定制的JS代码 -->
		<script src="<%=basePath %>js/vendor/jquery-2.2.4.min.js"></script>
		<script src="<%=basePath %>js/vendor/bootstrap.min.js"></script>
		<script src="<%=basePath %>js/plugins.js"></script>
		<script src="<%=basePath %>js/app.js"></script>

		<!-- Load and execute javascript code used only in this page -->
		<script src="<%=basePath %>js/pages/uiTables.js"></script>
		<script>
			$(function() {
				UiTables.init();
			});
		</script>
	</body>

</html>