<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if IE 9]> <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">

<title>部门与员工</title>

<meta name="description"
	content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<jsp:include page="/common.jsp" />
</head>
<body>
	<div id="page-wrapper" class="page-loading">
		<!-- Preloader -->
		<div class="preloader">
			<div class="inner">
				<div class="preloader-spinner themed-background hidden-lt-ie10"></div>
				<h3 class="text-primary visible-lt-ie10">
					<strong>Loading..</strong>
				</h3>
			</div>
		</div>
		<!-- END Preloader -->

		<!-- page-container -->
		<div id="page-container" class="sidebar-visible-lg-full">
			<div id="page-content">
				<div class="block full">

					<!-- Block Tabs Title -->
					<div class="block-title">
						<div class="block-options pull-right">
							<a href="javascript:void(0)"
								class="btn btn-effect-ripple btn-default" data-toggle="tooltip"
								title="Settings"><i class="fa fa-cog"></i></a>
						</div>
						<ul class="nav nav-tabs" data-toggle="tabs">
							<li class="active"><a href="#block-tabs-ygcode">员工账号</a></li>
							<li><a href="#block-tabs-deptsettings">部门设置</a></li>
							<li><a href="##block-tabs-role-limits-settings">角色权限设置</a></li>
							<!--<li><a href="#block-tabs-role-limits-settings"></a>角色权限设置</li>-->
						</ul>
					</div>
					<!-- END Block Tabs Title -->

					<!-- Tabs Content -->
					<div class="tab-content">
						<div class="tab-pane active" id="block-tabs-ygcode">
							<button><a href="<%=basePath %>company_user/add.htm">新增</a></button>
							<!-- Datatables Block -->
							<!-- Datatables is initialized in <%=basePath%>js/pages/uiTables.js -->
							<div class="block full">
								<div class="block-title">
									<h2>Datatables</h2>
								</div>
								<div class="table-responsive">
									<table id="example-datatable"
										class="table table-striped table-bordered table-vcenter">
										<thead>
											<tr>
												<th class="text-center" style="width: 50px;">ID</th>
												<th>User</th>
												<th>Email</th>
												<th style="width: 120px;">Status</th>
												<th class="text-center" style="width: 75px;"><i
													class="fa fa-flash"></i></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="text-center">1</td>
												<td><strong>AppUser1</strong></td>
												<td>app.user1@example.com</td>
												<td><span class="label label-info">On hold..</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">2</td>
												<td><strong>AppUser2</strong></td>
												<td>app.user2@example.com</td>
												<td><span class="label label-warning">Pending..</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">3</td>
												<td><strong>AppUser3</strong></td>
												<td>app.user3@example.com</td>
												<td><span class="label label-success">Active</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">4</td>
												<td><strong>AppUser4</strong></td>
												<td>app.user4@example.com</td>
												<td><span class="label label-info">On hold..</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">5</td>
												<td><strong>AppUser5</strong></td>
												<td>app.user5@example.com</td>
												<td><span class="label label-danger">Disabled</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">6</td>
												<td><strong>AppUser6</strong></td>
												<td>app.user6@example.com</td>
												<td><span class="label label-danger">Disabled</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">7</td>
												<td><strong>AppUser7</strong></td>
												<td>app.user7@example.com</td>
												<td><span class="label label-danger">Disabled</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">8</td>
												<td><strong>AppUser8</strong></td>
												<td>app.user8@example.com</td>
												<td><span class="label label-success">Active</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">9</td>
												<td><strong>AppUser9</strong></td>
												<td>app.user9@example.com</td>
												<td><span class="label label-warning">Pending..</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">10</td>
												<td><strong>AppUser10</strong></td>
												<td>app.user10@example.com</td>
												<td><span class="label label-warning">Pending..</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>
											<tr>
												<td class="text-center">11</td>
												<td><strong>AppUser10</strong></td>
												<td>app.user10@example.com</td>
												<td><span class="label label-warning">Pending..</span></td>
												<td class="text-center"><a href="javascript:void(0)"
													data-toggle="tooltip" title="Edit User"
													class="btn btn-effect-ripple btn-xs btn-success"><i
														class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													data-toggle="tooltip" title="Delete User"
													class="btn btn-effect-ripple btn-xs btn-danger"><i
														class="fa fa-times"></i></a></td>
											</tr>

										</tbody>
									</table>
								</div>
							</div>
							<!-- END Datatables Block -->

						</div>
						
						<!-- 部门设置 -->
						<div class="tab-pane" id="block-tabs-deptsettings">
							<div>
								<button onclick="location.reload()">刷新</button>
								<button>新增</button>
							</div>
							<div class="table-responsive">
								<table id="example-datatable" class="table table-striped table-bordered table-vcenter">
									<thead>
										<tr>
											<th></th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td class="text-center">
												<i class="fa fa-folder"></i> 销售部
											</td>
											<td>
												<a>
													<i class="gi gi-plus"></i> 新增子部门
												</a>&nbsp;&nbsp;
												<a>
													<i class="gi gi-pencil"></i> 修改
												</a>&nbsp;&nbsp;
												<a>
													<i class="hi hi-open"></i> 置顶
												</a>&nbsp;&nbsp;
												<a>
													<i class="gi gi-bin"></i> 删除
												</a>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div><!-- 部门设置 end -->
						
						
						
						
						<div class="tab-pane" id="block-tabs-role-limits-settings">
							<a href="<%=basePath %>role/edit.htm">修改员工信息</a>
						
						
						</div>
					</div>
					<!-- END Tabs Content -->
				</div>
			</div>
		</div>
	</div>
	<!-- END Page Wrapper -->

	<!-- jQuery,引导,jQuery插件和定制的JS代码 -->
	<script src="<%=basePath%>js/vendor/jquery-2.2.4.min.js"></script>
	<script src="<%=basePath%>js/vendor/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/plugins.js"></script>
	<script src="<%=basePath%>js/app.js"></script>

	<!-- Load and execute javascript code used only in this page -->
	<script src="<%=basePath%>js/pages/uiTables.js"></script>
	<script>
		$(function() {
			UiTables.init();
		});
	</script>
</body>
</html>