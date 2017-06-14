<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试从数据库加载菜单列表</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
	<jsp:include page="/common.jsp"></jsp:include>
</head>
<body>
	<ul class="sidebar-nav">
		<!--<li>
				<a href="index.html" class=" active"><i class="gi gi-compass sidebar-nav-icon"></i><span class="sidebar-nav-mini-hide">Dashboard</span></a>
			</li>-->
		<!--导航栏的分割点 ...   -->
		<li class="sidebar-separator"><i class="fa fa-ellipsis-h"></i></li>

		<!--开始-->
		<c:if test="${not empty requestScope.menuModelMap }">
			<c:forEach items="${requestScope.menuModelMap }" var="model">
				<c:forEach items="${requestScope.menuMap }" var="m1">
					<%-- ${model.key } --%>
					<c:if test="${m1.menuModule == model.value && m1.menuModule == m1.menuPrivilege}">
						<li>
							<!-- 得到一级菜单 -->
							<a href="#" class="sidebar-nav-menu"><i
								class="fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide"></i>
								<i class="${m1.icon }"></i>
								<span class="sidebar-nav-mini-hide">${m1.menuName }</span>
							</a>
						
							<ul>
								<c:forEach items="${requestScope.menuMap }" var="m2">
									<c:if test="${m1.menuPrivilege==m2.menuModule && m2.menuModule!=m2.menuPrivilege }">
										<li>
											<!-- 二级菜单 -->
											<a href="#" class="sidebar-nav-submenu">
												<i class="fa fa-chevron-left sidebar-nav-indicator"></i>${m2.menuName }
											</a>
											<!-- 三级菜单 -->
											<ul>
											<c:forEach items="${requestScope.menuMap }" var="m3">
												<c:if test="${m3.menuModule==m2.menuPrivilege && m3.menuModule==m3.supSubMenu}">
													<li><a href="${m3.url }" target="${m3.target}">${m3.menuName }</a></li>
												</c:if>
											</c:forEach>
											</ul>
										</li>
									</c:if>
								</c:forEach>
							</ul>
						</li>
					</c:if>
				</c:forEach>
			</c:forEach>
		</c:if>
		
		<!--结束-->
	</ul>
</body>
</html>