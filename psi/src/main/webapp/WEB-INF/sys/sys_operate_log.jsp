<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="http://localhost:9999/psi/">
<!-- 下拉框 -->
<link rel="stylesheet" href="<%=basePath %>static/ace/css/chosen.css" />
<!-- jsp文件头和头部 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta charset="utf-8" />
<title>日志记录</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<script src="<%=basePath %>js/jquery-1.8.3.min.js"></script>
<script src="<%=basePath %>js/layer.js"></script>
<link rel="stylesheet" href="<%=basePath %>static/ace/css/bootstrap.css" />
<link rel="stylesheet" href="<%=basePath %>static/ace/css/font-awesome.css" />
<link rel="stylesheet" href="<%=basePath %>static/ace/css/ace-fonts.css" />
<link rel="stylesheet" href="<%=basePath %>css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/common.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/slide.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/flat-ui.min.css" />
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/jquery.nouislider.css">
<link rel="stylesheet" href="<%=basePath %>static/ace/css/ace.css" class="ace-main-stylesheet" id="main-ace-style" />
<link rel="stylesheet" href="<%=basePath %>static/ace/css/datepicker.css" />

<script src="<%=basePath %>static/ace/js/ace-extra.js"></script>
</head>
<body class="no-skin">
	<div class="main-container" id="main-container">
		<!-- /section:basics/sidebar -->
		<div class="main-content">
			<div class="main-content-inner">
				<div class="page-content">
					<div class="row">
						<div class="col-xs-12">
						
							<!-- 检索  -->
							<form action="<%=basePath %>sys/operate_log.htm" method="post" name="Form" id="Form">
								<input type="hidden" name="index" value="1">
								<table style="margin-top: 5px;">
									<tr>
										<td>
											<div class="nav-search">
												<span class="input-icon">
													<input onkeyup="document.forms[0].submit();" value="" type="text" placeholder="这里输入关键词" class="nav-search-input"
													id="nav-search-input" autocomplete="off" name="keywords" /><i class="ace-icon fa fa-search nav-search-icon"></i>
												</span>
											</div>
										</td>
										<td style="padding-left: 2px;">
											<!-- 显示日期控件 -->
										</td>
										<td style="padding-left: 2px;">
											<!-- 显示日期控件 -->
										</td>
										<td style="vertical-align: top; padding-left: 2px">
											<!-- 检索控件 -->
										</td>
										<td style="vertical-align: top; padding-left: 2px;">
											<!-- 导出到EXCEL -->
										</td>
									</tr>
								</table>
								
								<!-- 列表 -->
								<table id="simple-table" class="table table-striped table-bordered table-hover">
									<thead>
										<tr>
											<th class="center" width="20%">操作人</th>
											<th class="center" width="20%">时间</th>
											<th class="center" width="20%">操作类型</th>
											<th class="center" width="100%">操作日志</th>
										</tr>
									</thead>

									<tbody>
										<c:if test="${not empty page.list }">
											<!-- 开始循环 -->
											<c:forEach items="${page.list }" var="log">
												<tr>
													<td class='center'>${log.cnname }</td>
													<td class='center'>${log.actionDate }</td>
													<td class='center'>${log.actionType }</td>
													<td class='center'>${log.actionContent }</td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${empty page.list }">
											<tr>
												<td class='center' style="color: red;" colspan="4">
													没有找到你想要的数据
												</td>
											</tr>
										</c:if>
									</tbody>
								</table>
								
								<div class="page-header position-relative">
									<table style="width: 100%;">
										<tr>
											<td style="vertical-align: top;">
												<a class="btn btn-mini btn-success" onclick="add();">新增</a>
												<a class="btn btn-mini btn-danger"　onclick="makeAll('确定要删除选中的数据吗?');" title="批量删除">
													<i class='ace-icon fa fa-trash-o bigger-120'></i>
												</a>
											</td>
											<td style="vertical-align: top;">
											<div class="pagination"
													style="float: right; padding-top: 0px; margin-top: 0px;">
													<ul class="pagination pull-right no-margin">
														<li><a>共<font color=red>${page.total }</font>条
														</a></li>
														<li>
															<input type="number" min="1" value="" id="toGoPage"
															style="width: 60px;height:32px; text-align: center; float: left"
															placeholder="页码" />
														</li>
														<li style="cursor: pointer;"><a onclick="toTZ();"
															class="btn btn-mini btn-success" style="height:32px;">跳转</a></li>
														<li><a href="<%=basePath %>sys/operate_log.htm?index=1">首页</a></li>
														<li><a href="<%=basePath %>sys/operate_log.htm?index=${page.prePage }">上页</a></li>
														<li class="active"><a><font color='white'>${page.pageNum }</font></a></li>
														<li><a href="<%=basePath %>sys/operate_log.htm?index=${page.nextPage }">下页</a></li>
														<li><a href="<%=basePath %>sys/operate_log.htm?index=${page.pages }">尾页</a></li>
														<li><a>共${page.pages }页</a></li>
														<li>
															<select name="pageSize" title='显示条数'
															style="width: 55px;height:32px; float: left;"
															onchange="changeCount(this.value,'<%=basePath %>')">
																<option value='10'>10</option>
																<option value='10'>10</option>
																<option value='20'>20</option>
																<option value='30'>30</option>
																<option value='40'>40</option>
																<option value='50'>50</option>
														</select></li>
													</ul>
												</div>
											</td>
										</tr>
									</table>
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
	<script type="text/javascript">
	//分页的公共方法
	function changeCount(obj,basePath){
		//alert("显示数量："+obj+"   本项目的地址："+basePath);
		location.href = basePath+"sys/operate_log.htm?index=1&pageSize="+obj;
	}
	</script>
</body>
</html>