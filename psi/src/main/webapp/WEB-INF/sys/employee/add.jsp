<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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

<title>添加员工信息</title>

<meta name="description"
	content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<jsp:include page="/common.jsp" />
<style type="text/css">
td{
	word-break: break-all; 
	word-wrap:break-word;
}
</style>
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

		<div id="page-container" class="sidebar-visible-lg-full"
			style="background-color: white;">
			<div id="page-content" style="background-color: white;">
				<form action="page_forms_components.html" method="post"
					class="form-horizontal form-bordered" onsubmit="return false;">
					<div class="block-title">
						<h3>
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">基础信息</font>
						</h3>
					</div>
					<table border="0">
						<tr>
							<td width="10%"></td>
							<td width="60%" colspan="3"></td>
						</tr>

						<tr>
							<td align="right"><font color="red">*</font>登录账号&nbsp;&nbsp;</td>
							<td colspan="3"><input type="text" class="form-control"
								placeholder=""></td>
						</tr>
						<tr height="50px">
							<td align="right"><font color="red">*</font>密码&nbsp;&nbsp;</td>
							<td colspan="3"><input type="text" class="form-control"
								placeholder=""></td>
						</tr>
						<tr>
							<td align="right"><font color="red">*</font>确认密码&nbsp;&nbsp;</td>
							<td colspan="3"><input type="text" class="form-control"
								placeholder=""></td>
						</tr>

						<tr height="50px">
							<td align="right"><font color="red">*</font>姓名&nbsp;&nbsp;</td>
							<td><input type="text" class="form-control" placeholder="">
							</td>
							<td align="right"><font color="red">*</font>手机&nbsp;&nbsp;</td>
							<td><input type="text" class="form-control" placeholder="">
							</td>
						</tr>

						<tr>
							<td align="right"><font color="red">*</font>部门&nbsp;&nbsp;</td>
							<td colspan="3"><select id="example-chosen"
								name="example-chosen" class="select-chosen"
								data-placeholder="请选择部门" style="width: 250px;">
									<option>请选择部门</option>
									<!-- 所需数据占位符属性选择的插件 -->
									<c:forEach items="${selectSysDept }" var="dept">
										<option value="${dept.id }">${dept.name }</option>
									</c:forEach>
							</select></td>
						</tr>

						<tr height="50px">
							<td align="right"><font color="red">*</font>职位&nbsp;&nbsp;</td>
							<td colspan="3"><input type="text" class="form-control"
								placeholder=""></td>
						</tr>

						<tr>
							<td align="right"><font color="red">*</font>Email&nbsp;&nbsp;</td>
							<td><input type="text" class="form-control" placeholder="">
							</td>
							<td align="right"><font color="red">*</font>QQ&nbsp;&nbsp;</td>
							<td><input type="text" class="form-control" placeholder="">
							</td>
						</tr>

					</table>
					<br />

					<div class="block-title">
						<h3>
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">权限设置</font>
						</h3>
					</div>
					<table border="0">
						<tr>
							<td width="10%"></td>
							<td width="60%" colspan="3"></td>
						</tr>
						<tr>
							<td align="right"><font color="red">*</font>账号权限&nbsp;&nbsp;</td>
							<td colspan="3"><select id="example-chosen"
								name="example-chosen" class="select-chosen"
								data-placeholder="请选择" style="width: 250px;">
									<option>请选择</option>
									<c:forEach items="${roles }" var="r">
										<option value="${r.id }">${r.name }</option>
									</c:forEach>
							</select></td>
						</tr>
					</table>
					
					<br>
					<table border="1" width="90%" style="margin-left: 10px;border-color: #EEF1F9 ">
						<tr style="border: 0px;">
							<td width="10%"></td>
							<td></td>
						</tr>
						<c:if test="${not empty moduleNames }">
							<c:forEach items="${moduleNames }" var="m">
								<tr>
									<td align="center" style="background-color: #EEF1F9;">${m.value }</td>
									<td>
										<c:forEach items="${permissions }" var="p">
											<c:if test="${m.key == p.module }">
												<input type="checkbox">${p.name }
												&nbsp;&nbsp;&nbsp;&nbsp;
											</c:if>
										</c:forEach>
										<!-- <input type="checkbox">订单 -->
									</td>
								</tr>
							</c:forEach>
						</c:if>
					</table>
					
					<input type="submit" value="保存">
					<button onclick="history.go(-1);">取消</button>
				</form>
			</div>
		</div>

	</div>

	<script src="<%=basePath%>js/vendor/jquery-2.2.4.min.js"></script>
	<script src="<%=basePath%>js/vendor/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/plugins.js"></script>
	<script src="<%=basePath%>js/app.js"></script>

	<%-- <script src="<%=basePath %>js/pages/readyDashboard.js"></script>
	<!-- <script>
		$(function() {
			/*初始化仪表盘*/
			ReadyDashboard.init();
		});
	</script> --> --%>
</body>
</html>