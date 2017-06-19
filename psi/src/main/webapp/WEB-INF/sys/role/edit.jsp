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
<title>修改员工信息</title>

<jsp:include page="/common.jsp"/>
<link rel="stylesheet" href="<%=basePath %>css/layui.css">
<link rel="stylesheet" href="<%=basePath %>css/use.css">

<script src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="<%=basePath %>layer/layer.js"></script>
<script type="text/javascript" >
	function update(basePath){
		alert(basePath+"<<<<");
		$.getJSON(basePath+"role/updateSysRole.do",$("#roleFrm").serialize());
		alert("DDDDDDDDDDDDDDDDDDDDDDD");
// 		$.ajax({
// 			url:basePath+"role/updateSysRole.do",
// 			type:"post",
// 			dataType:"json",
// 			success:function(data){
// 				alert(data);
// 				/* $.each(data,function(index,k){
// 					alert(k.id+" "+k.name+" "+k.age);
// 				}); */
// 			}
// 		});
	}
</script>
</head>
<body style="background-color: white;">
	<form id="roleFrm">
		<table border="0" width="80%">
				<tr>
					<td width="10%"></td>
					<td width="40%" colspan="3">
						<input type="hidden" name="id" value="${role.id }">
					</td>
				</tr>
				<tr height="80px">
					<td align="right"><font color="red">*</font>角色名称&nbsp;&nbsp;</td>
					<td colspan="3">
						<input type="text" name="name" value="${role.name }" class="form-control" placeholder="请输入角色名称">
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button onclick="update('<%=basePath %>');" class="layui-btn layui-btn-radius use-btn">保存</button>
						<button onclick="parent.layer.closeAll();" class="layui-btn layui-btn-radius layui-btn-primary use-btn">取消</button>
					</td>
				</tr>
		</table>
	</form>
	<script src="<%=basePath%>js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="<%=basePath %>layer/layer.js"></script>
	<script type="text/javascript">
		function update(basePath){
			/* alert(basePath); */
			$.ajax({
				url:basePath+"role/updateSysRole.do",
				type:"post",
				data:$("#roleFrm").serialize(),
				dataType:"json",
				success:function(data){
					
				}
			});
		}
		
	</script>
</body>
</html>