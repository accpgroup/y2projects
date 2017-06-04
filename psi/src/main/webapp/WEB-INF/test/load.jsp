<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html ><!--  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
</head>
<body>
<font color="red">*【名称】和【简称】支持模糊查询</font>
<hr>
<form action="<%=basePath %>test/load.do" method="post"><%-- <%=basePath %> --%>
	<!-- 名称和简称支持模糊查询 -->
	编号：<input type="number" name="countryBean.id" value="${search.countryBean.id }" style="width: 60px" />
	名称：<input type="text" name="countryBean.countryname" value="${search.countryBean.countryname }"/>
	简称：<input type="text" name="countryBean.countrycode" value="${search.countryBean.countrycode }" style="width: 60px"/>
	<input type="submit" value="查询">
	<hr>
	<table border="1" width="80%" rules="all">
		<tr>
			<th>编号</th><th>名称</th><th>简称</th><th>操作</th>		
		</tr>
		<c:if test="${not empty requestScope.countryList }">
		<c:forEach items="${requestScope.countryList }" var="c" varStatus="t">
			<tr>
				<td>${t.count }</td>
				<td>${c.countryname }</td>
				<td>${c.countrycode }</td>
				<td>
					<a href="<%=basePath %>test/delCountry/${c.id }.do">删除</a>
					<a href="<%=basePath %>test/editCountry/${c.id }.do">编辑</a>
				</td>
			</tr>
		</c:forEach>
		<tr align="center">
			<td colspan="4">
				<a href="<%=basePath %>test/load.do?index=${firstPage }">首页</a>
				<a href="<%=basePath %>test/load.do?index=${prePage }">上一页</a>
				<a href="<%=basePath %>test/load.do?index=${nextPage }">下一页</a>
				<a href="<%=basePath %>test/load.do?index=${lastPage }">尾页</a>
				&nbsp;
				<select>
					<option>请选择</option>
					<option>5条/页</option>
					<option>10条/页</option>
					<option>15条/页</option>
					<option>20条/页</option>
				</select>
				&nbsp;
				到第<input size="5" max="1000" min="1" type="number" name="index" value="${index }" onchange="document.forms[0].submit()">页
			</td>
		</tr>
		</c:if>
		<c:if test="${empty requestScope.countryList }">
			<tr align="center">
				<td colspan="4" style="color: red">没有找到你想要的数据！</td>
			</tr>
		</c:if>
	</table>
	<button><a href="<%=basePath %>test/addPage.do">添加</a></button>
</form>
</body>
</html>