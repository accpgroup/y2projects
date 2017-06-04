<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Insert title here</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
</head>
<body>
	<h1>修改</h1>
	<hr>
	<form action="<%=basePath %>test/updateCountry.do" method="post">
		ID：<input type="text" name="id" value="${country.id }" /><br> 
		名称：<input type="text" name="countryname" value="${country.countryname }" /><br> 
		简称：<input type="text" name="countrycode" value="${country.countrycode }"/><br> 
		<input type="submit" value="保存" />
	</form>
</body>
</html>