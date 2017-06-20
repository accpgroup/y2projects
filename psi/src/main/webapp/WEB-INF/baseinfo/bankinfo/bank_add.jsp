<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html >
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> -->
<html lang="en">
<head>
<base href="http://localhost:9090/psi/">
<!-- jsp文件头和头部 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title></title>
<meta name="description" content="" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!-- bootstrap & fontawesome -->
<link rel="stylesheet" href="static/ace/css/bootstrap.css" />
<link rel="stylesheet" href="static/ace/css/font-awesome.css" />
<!-- page specific plugin styles -->
<!-- text fonts -->
<link rel="stylesheet" href="static/ace/css/ace-fonts.css" />
<!-- ace styles -->
<link rel="stylesheet" href="static/ace/css/ace.css"
	class="ace-main-stylesheet" id="main-ace-style" />

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

<!--[if lte IE 9]>
			<link rel="stylesheet" href="static/ace/css/ace-part2.css" class="ace-main-stylesheet" />
		<![endif]-->
<!--[if lte IE 9]>
		  <link rel="stylesheet" href="static/ace/css/ace-ie.css" />
		<![endif]-->
<!-- inline styles related to this page -->
<!-- ace settings handler -->
<script src="static/ace/js/ace-extra.js"></script>
<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
<!--[if lte IE 8]>
		<script src="static/ace/js/html5shiv.js"></script>
		<script src="static/ace/js/respond.js"></script>
		<![endif]-->

</head>
<body class="no-skin">
	<!-- /section:basics/navbar.layout -->
	<div class="main-container" id="main-container">
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
	
							<form action="costInfo/update2.do" name="Form" id="Form" method="post">
								
								<div id="zhongxin" style="padding-top: 13px;">
									<table id="table_report" style="height: 100px"
										class="table table-striped table-bordered table-hover">
										<tr>
											<td
												style="width: 75px; text-align: right; padding-top: 13px;">账户名称</td>
											<td><input type="text" name=bfname id="WEIXIN"
												value="" maxlength="100" placeholder="这里输入账户名称" title="账户名称"
												style="width: 98%;" /></td>
										</tr>
										<tr>
											<td
												style="width: 75px; text-align: right; padding-top: 13px;">银行卡号</td>
											<td><input type="text" name="bfcardnum" id="WEIXIN"
												value="" maxlength="100" placeholder="这里输入银行卡号" title="银行卡号"
												style="width: 98%;" /></td>
										</tr>
										<tr>
											<td
												style="width: 75px; text-align: right; padding-top: 13px;">金额(万元)</td>
											<td><input type="text" name="bfmoney" id="MONEY"
												value="" maxlength="32" placeholder="这里输入金额" title="金额"
												style="width: 98%;" /></td>
										</tr>
										<tr>
											<td style="text-align: center;" colspan="10">
											<a class="btn btn-mini btn-primary" onclick="save();">保存</a> 
												<a
												class="btn btn-mini btn-danger"
												onclick="jacascript:window.close()">取消</a></td>
										</tr>
									</table>
								</div>
								<div id="zhongxin2" class="center" style="display: none">
									<br />
									<br />
									<br />
									<br />
									<br />
									<img src="static/images/jiazai.gif" /><br />
									<h4 class="lighter block green">提交中...</h4>
								</div>
							</form>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->
	</div>
	<!-- /.main-container -->


	<!-- 页面底部js¨ -->

	<!--[if !IE]> -->
	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='http://localhost:9999/FHSHGL/static/ace/js/jquery.js'>"
								+ "<"+"/script>");
	</script>
	<!-- <![endif]-->
	<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='http://localhost:9999/FHSHGL/static/ace/js/jquery1x.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
	<script type="text/javascript">
		if ('ontouchstart' in document.documentElement)
			document
					.write("<script src='http://localhost:9999/FHSHGL/static/ace/js/jquery.mobile.custom.js'>"
							+ "<"+"/script>");
	</script>
	<script src="static/ace/js/bootstrap.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	<script type="text/javascript">
		$(top.hangge());
		//保存
		function save(){

			window.opener.location.reload();
			var judge=confirm("是否确认保存?");
			if(judge){
				window.close();
				 $.ajax({
						url:"bankInfo/add2.do",
						data:$('#Form').serialize(),
						type:"post",
						dataType:"json",
						success:function(data){
						}
				});
			}
		}
		</script>
</body>
</html>