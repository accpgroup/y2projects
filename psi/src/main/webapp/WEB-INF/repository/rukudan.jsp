<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="http://localhost:9999/psi/">
<!-- 下拉框 -->
<link rel="stylesheet" href="static/ace/css/chosen.css" />
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

<!-- 日期框 -->
<link rel="stylesheet" href="static/ace/css/datepicker.css" />
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

							<!-- 检索  -->
							<form action="customer/list.do" method="post" name="Form"
								id="Form">
								<table style="margin-top: 5px;">
									<tr>
										<td>
											<div class="nav-search">
												<span class="input-icon"> <input type="text"
													placeholder="这里输入关键词" class="nav-search-input"
													id="nav-search-input" autocomplete="off" name="keywords"
													value="" placeholder="这里输入关键词" /> <i
													class="ace-icon fa fa-search nav-search-icon"></i>
												</span>
											</div>
										</td>
										<td style="padding-left: 2px;"><input
											class="span10 date-picker" name="lastStart" id="lastStart"
											value="" type="text" data-date-format="yyyy-mm-dd"
											readonly="readonly" style="width: 88px;" placeholder="开始日期"
											title="开始日期" /></td>
										<td style="padding-left: 2px;"><input
											class="span10 date-picker" name="lastEnd" name="lastEnd"
											value="" type="text" data-date-format="yyyy-mm-dd"
											readonly="readonly" style="width: 88px;" placeholder="结束日期"
											title="结束日期" /></td>

										<td style="vertical-align: top; padding-left: 2px"><a
											class="btn btn-light btn-xs" onclick="tosearch();" title="检索"><i
												id="nav-search-icon"
												class="ace-icon fa fa-search bigger-110 nav-search-icon blue"></i></a></td>

										<td style="vertical-align: top; padding-left: 2px;"><a
											class="btn btn-light btn-xs" onclick="toExcel();"
											title="导出到EXCEL"><i id="nav-search-icon"
												class="ace-icon fa fa-download bigger-110 nav-search-icon blue"></i></a></td>
									</tr>
								</table>
								<!-- 检索  -->

								<table id="simple-table"
									class="table table-striped table-bordered table-hover"
									style="margin-top: 5px;">
									<thead>
										<tr>
											<!--<th class="center" style="width: 35px;"><label
												class="pos-rel"><input type="checkbox" class="ace"
													id="zcheckbox" /><span class="lbl"></span></label></th>-->
											<th class="center" style="width: 50px;">序号</th>
											<th class="center">入库单号</th>
											<th class="center">入库日期</th>
											<th class="center">入库仓库</th>
											<th class="center">入库类型</th>
											<th class="center">制单人</th>
											<th class="center">备注</th>
										</tr>
									</thead>

									<tbody>
										<!-- 开始循环 -->




										<tr>
											<!--<td class='center'><label class="pos-rel"><input
													type='checkbox' name='ids'
													value="884a84021c2d45f4b09872f226bcaaa5" class="ace" /><span
													class="lbl"></span></label></td>-->
											<td class='center' style="width: 30px;">1</td>
											<td class='center'>ruku-000000-000</td>
											<td class='center'>2017-06-10</td>
											<td class='center'>徐东仓库</td>
											<td class='center'>采购入库</td>
											<td class='center'>杨飞</td>
											<td class='center'>没什么</td>
											

												<div class="hidden-sm hidden-xs btn-group">
													<a class="btn btn-xs btn-success" title="查看"
														onclick="view('884a84021c2d45f4b09872f226bcaaa5');"> <i
														class="ace-icon fa fa-eye bigger-120" title="查看"></i>
													</a> <a class="btn btn-xs btn-success" title="编辑"
														onclick="edit('884a84021c2d45f4b09872f226bcaaa5');"> <i
														class="ace-icon fa fa-pencil-square-o bigger-120"
														title="编辑"></i>
													</a> <a class="btn btn-xs btn-danger"
														onclick="del('884a84021c2d45f4b09872f226bcaaa5');"> <i
														class="ace-icon fa fa-trash-o bigger-120" title="删除"></i>
													</a>

												</div>
												<div class="hidden-md hidden-lg">
													<div class="inline pos-rel">
														<button class="btn btn-minier btn-primary dropdown-toggle"
															data-toggle="dropdown" data-position="auto">
															<i class="ace-icon fa fa-cog icon-only bigger-110"></i>
														</button>

														<ul
															class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
															<li><a style="cursor: pointer;"
																onclick="view('884a84021c2d45f4b09872f226bcaaa5');"
																class="tooltip-success" data-rel="tooltip" title="查看">
																	<span class="green"> <i
																		class="ace-icon fa fa-eye bigger-120"></i>
																</span>
															</a></li>

															<li><a style="cursor: pointer;"
																onclick="edit('884a84021c2d45f4b09872f226bcaaa5');"
																class="tooltip-success" data-rel="tooltip" title="修改">
																	<span class="green"> <i
																		class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																</span>
															</a></li>


															<li><a style="cursor: pointer;"
																onclick="del('884a84021c2d45f4b09872f226bcaaa5');"
																class="tooltip-error" data-rel="tooltip" title="删除">
																	<span class="red"> <i
																		class="ace-icon fa fa-trash-o bigger-120"></i>
																</span>
															</a></li>

														</ul>
													</div>
												</div>
											</td>
										</tr>







									</tbody>
								</table>
								<div class="page-header position-relative">
									<table style="width: 100%;">
										<tr>
											<td style="vertical-align: top;"><a
												class="btn btn-mini btn-success" onclick="add();">新增</a> <a
												class="btn btn-mini btn-danger"
												onclick="makeAll('确定要删除选中的数据吗?');" title="批量删除"><i
													class='ace-icon fa fa-trash-o bigger-120'></i></a></td>
											<td style="vertical-align: top;"><div class="pagination"
													style="float: right; padding-top: 0px; margin-top: 0px;">
													<ul class="pagination pull-right no-margin">
														<li><a>共<font color=red>1</font>条
														</a></li>
														<li><input type="number" value="" id="toGoPage"
															style="width: 50px; text-align: center; float: left"
															placeholder="页码" /></li>
														<li style="cursor: pointer;"><a onclick="toTZ();"
															class="btn btn-mini btn-success">跳转</a></li>
														<li><a>首页</a></li>
														<li><a>上页</a></li>
														<li class="active"><a><font color='white'>1</font></a></li>
														<li><a>下页</a></li>
														<li><a>尾页</a></li>
														<li><a>共1页</a></li>
														<li><select title='显示条数'
															style="width: 55px; float: left; margin-top: 1px;"
															onchange="changeCount(this.value)">
																<option value='10'>10</option>
																<option value='10'>10</option>
																<option value='20'>20</option>
																<option value='30'>30</option>
																<option value='40'>40</option>
																<option value='50'>50</option>
																<option value='60'>60</option>
																<option value='70'>70</option>
																<option value='80'>80</option>
																<option value='90'>90</option>
																<option value='99'>99</option>
														</select></li>
													</ul>
													<script type="text/javascript">
														function nextPage(page) {
															top.jzts();
															if (true && document.forms[0]) {
																var url = document.forms[0]
																		.getAttribute("action");
																if (url
																		.indexOf('?') > -1) {
																	url += "&currentPage=";
																} else {
																	url += "?currentPage=";
																}
																url = url
																		+ page
																		+ "&showCount=10";
																document.forms[0].action = url;
																document.forms[0]
																		.submit();
															} else {
																var url = document.location
																		+ '';
																if (url
																		.indexOf('?') > -1) {
																	if (url
																			.indexOf('currentPage') > -1) {
																		var reg = /currentPage=\d*/g;
																		url = url
																				.replace(
																						reg,
																						'currentPage=');
																	} else {
																		url += "&currentPage=";
																	}
																} else {
																	url += "?currentPage=";
																}
																url = url
																		+ page
																		+ "&showCount=10";
																document.location = url;
															}
														}
														function changeCount(
																value) {
															top.jzts();
															if (true && document.forms[0]) {
																var url = document.forms[0]
																		.getAttribute("action");
																if (url
																		.indexOf('?') > -1) {
																	url += "&currentPage=";
																} else {
																	url += "?currentPage=";
																}
																url = url
																		+ "1&showCount="
																		+ value;
																document.forms[0].action = url;
																document.forms[0]
																		.submit();
															} else {
																var url = document.location
																		+ '';
																if (url
																		.indexOf('?') > -1) {
																	if (url
																			.indexOf('currentPage') > -1) {
																		var reg = /currentPage=\d*/g;
																		url = url
																				.replace(
																						reg,
																						'currentPage=');
																	} else {
																		url += "1&currentPage=";
																	}
																} else {
																	url += "?currentPage=";
																}
																url = url
																		+ "&showCount="
																		+ value;
																document.location = url;
															}
														}
														function toTZ() {
															var toPaggeVlue = document
																	.getElementById("toGoPage").value;
															if (toPaggeVlue == '') {
																document
																		.getElementById("toGoPage").value = 1;
																return;
															}
															if (isNaN(Number(toPaggeVlue))) {
																document
																		.getElementById("toGoPage").value = 1;
																return;
															}
															nextPage(toPaggeVlue);
														}
													</script>
												</div></td>
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

		<!-- 返回顶部 -->
		<a href="#" id="btn-scroll-up"
			class="btn-scroll-up btn btn-sm btn-inverse"> <i
			class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
		</a>

	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->
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
	<!-- 删除时确认窗口 -->
	<script src="static/ace/js/bootbox.js"></script>
	<!-- ace scripts -->
	<script src="static/ace/js/ace/ace.js"></script>
	<!-- 下拉框 -->
	<script src="static/ace/js/chosen.jquery.js"></script>
	<!-- 日期框 -->
	<script src="static/ace/js/date-time/bootstrap-datepicker.js"></script>
	<!--提示框-->
	<script type="text/javascript" src="static/js/jquery.tips.js"></script>
	
</body>
</html>
