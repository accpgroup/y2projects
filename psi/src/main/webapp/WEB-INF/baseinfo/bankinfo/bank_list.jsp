<!DOCTYPE html>
<html lang="en">
<head>
<base href="http://localhost:9090/psi/">
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
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/layer.js"></script>
<link rel="stylesheet" href="static/ace/css/bootstrap.css" />
<link rel="stylesheet" href="static/ace/css/font-awesome.css" />
<!-- page specific plugin styles -->
<!-- text fonts -->
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
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<script src="static/ace/js/ace-extra.js"></script>
<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
<!--[if lte IE 8]>
		<script src="static/ace/js/html5shiv.js"></script>
		<script src="static/ace/js/respond.js"></script>
		<![endif]-->

<!-- 日期框 -->
<link rel="stylesheet" href="static/ace/css/datepicker.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		var conf = "${conf}";
		$("#sel").val("${p.pageSize}");
		if (conf != null && conf != "") {
			alert(conf);
		}
	})
	
	function tijiao(page) {
		var size=$("sel").val();
		window.location.href="bankInfo/goto.do?page="+page;
	}
	
	function tijiao2(size) {
		window.location.href="bankInfo/goto.do?size="+size;
	}
	
	function tijiao3() {
		var page=$("#toGoPage").val();
		var reg = /^[1-9]\d*$/;
		if(!reg.test(page)){
			alert("请输入大于0的正整数!");
		}else{
			tijiao(page);
		}
		
	}
</script>
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
								

								<table id="simple-table"
									class="table table-striped table-bordered table-hover"
									style="margin-top: 5px;">
									<thead>
										<tr>
											<th class="center" style="width: 35px;"><label
												class="pos-rel"><input type="checkbox" class="ace"
													id="zcheckbox" /><span class="lbl"></span></label></th>
											<th class="center" style="width: 50px;">序号</th>											
											<th class="center">账户名称</th>
											<th class="center">银行卡号</th>
											<th class="center">金额(万元)</th>
											<th class="center">备注</th>
											<th class="center">操作</th>
										</tr>
									</thead>

									<tbody>
										<!-- 开始循环 -->



										<c:forEach items="${list }" var="k"   varStatus="i">
										<tr>
											<td class='center'><label class="pos-rel"><input
													type='checkbox' name='ids'
													value="884a84021c2d45f4b09872f226bcaaa5" class="ace" /><span
													class="lbl"></span></label></td>
											<td class='center' style="width: 30px;">${i.index+1 }</td>
											<td class='center'>${k.bfname }</td>
											<td class='center'>${k.bfcardnum }</td>
											<td class='center'>${k.bfmoney }</td>
											<td class='center'>${k.bfremark }</td>
											<td class="center">

												<div class="hidden-sm hidden-xs btn-group">
												<a class="btn btn-xs btn-success" title="编辑"
														onclick="edit(${k.bfid });"> <i
														class="ace-icon fa fa-pencil-square-o bigger-120"
														title="编辑"></i>
													</a> <a class="btn btn-xs btn-danger"
														onclick="del(${k.bfid });"> <i
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
																onclick="edit('${k.bfid}');"
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

</c:forEach>





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
											
											
											<td style="vertical-align: top; padding-left: 2px;"><a
											class="btn btn-light btn-xs" onclick="toExcel('${p.total}');"
											title="导出到EXCEL"><i id="nav-search-icon"
												class="ace-icon fa fa-download bigger-110 nav-search-icon blue"></i></a></td>
											</td>
											<td style="vertical-align: top;"><div class="pagination"
													style="float: right; padding-top: 0px; margin-top: 0px;">
													<ul class="pagination pull-right no-margin">
														<li><a>共<font color=red>${ p.total}</font>条
														</a></li>
														<li><input type="number" value="${p.pageNum }" id="toGoPage"
															style="width: 50px; text-align: center; float: left"
															placeholder="页码"   max="${p.lastPage }" min="${p.firstPage }"/>
														</li>
														<li style="cursor: pointer;"><a onclick="tijiao3()"
															class="btn btn-mini btn-success">跳转</a></li>
														<li><a href="javascript:tijiao('${p.firstPage }');" onclick="return ${p.hasPreviousPage}">首页</a></li>
														<li><a href="javascript:tijiao('${p.prePage }');" onclick="return ${p.hasPreviousPage}">上页</a></li>
														<li class="active">
														<c:forEach items="${p.navigatepageNums }" var="i">
															<c:choose>
															   <c:when test="${i == p.pageNum }">															         
																	<a href="javascript:tijiao('${i }');"><font style="color:white;cursor: pointer;">${i }</font></a>      
															   </c:when>
															   <c:otherwise> 
																	<a  href="javascript:tijiao('${i }');" style="background-color:white;color: #5EB3E7;cursor: pointer;">${i }</a>
															   </c:otherwise>
															</c:choose>
														</c:forEach>
														</li>
														<li><a href="javascript:tijiao('${p.nextPage }');" onclick="return ${p.hasNextPage }">下页</a></li>
														<li><a href="javascript:tijiao('${p.lastPage }');" onclick="return ${p.hasNextPage }">尾页</a></li>
														<li><a>共${p.pages }页</a></li>
														<li><select title='显示条数' id="sel"
															style="width: 55px; float: left; margin-top: 1px;"
															onchange="tijiao2(this.value)">
																<option value='5'>5</option>
																<option value='10'>10</option>
																<option value='20'>20</option>
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
	<script type="text/javascript">
		$(top.hangge());//关闭加载状态
		//检索
		function tosearch() {
			top.jzts();
			$("#Form").submit();
		}
		$(function() {

			//日期框
			$('.date-picker').datepicker({
				autoclose : true,
				todayHighlight : true
			});

			//下拉框
			if (!ace.vars['touch']) {
				$('.chosen-select').chosen({
					allow_single_deselect : true
				});
				$(window).off('resize.chosen').on('resize.chosen', function() {
					$('.chosen-select').each(function() {
						var $this = $(this);
						$this.next().css({
							'width' : $this.parent().width()
						});
					});
				}).trigger('resize.chosen');
				$(document).on('settings.ace.chosen',
						function(e, event_name, event_val) {
							if (event_name != 'sidebar_collapsed')
								return;
							$('.chosen-select').each(function() {
								var $this = $(this);
								$this.next().css({
									'width' : $this.parent().width()
								});
							});
						});
				$('#chosen-multiple-style .btn').on(
						'click',
						function(e) {
							var target = $(this).find('input[type=radio]');
							var which = parseInt(target.val());
							if (which == 2)
								$('#form-field-select-4').addClass(
										'tag-input-style');
							else
								$('#form-field-select-4').removeClass(
										'tag-input-style');
						});
			}

			//复选框全选控制
			var active_class = 'active';
			$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on(
					'click',
					function() {
						var th_checked = this.checked;//checkbox inside "TH" table header
						$(this).closest('table').find('tbody > tr').each(
								function() {
									var row = this;
									if (th_checked)
										$(row).addClass(active_class).find(
												'input[type=checkbox]').eq(0)
												.prop('checked', true);
									else
										$(row).removeClass(active_class).find(
												'input[type=checkbox]').eq(0)
												.prop('checked', false);
								});
					});
		});

		//新增
		function add() {
			window.showModalDialog("bankInfo/add.do", "", "center=yes;dialogHeight=170px;dialogwidth=410px;location=no;edge=sunken;help=no;resizable=no;status=no;scrollbars=no;");
			
		}

		//跟踪记录
		function chaImg(CUSTOMER_ID) {
			top.jzts();
			var diag = new top.Dialog();
			diag.Drag = true;
			diag.Title = "跟踪记录";
			diag.URL = 'http://localhost:9999/FHSHGL/customerimg/list.do?CUSTOMER_ID='
					+ CUSTOMER_ID;
			diag.Width = 800;
			diag.Height = 600;
			diag.Modal = false; //有无遮罩窗口
			diag.ShowMaxButton = true; //最大化按钮
			diag.ShowMinButton = true; //最小化按钮
			diag.CancelEvent = function() { //关闭事件
				diag.close();
			};
			diag.show();
		}

		//删除
		function del(id) {
			bootbox.confirm("确定要删除吗?",
					function(result) {
					if(result){
						window.location.href="bankInfo/delete.do?id="+id;		
					}
					});
		}

		//修改
		function edit(id) {
			alert(id);
			window.showModalDialog("bankInfo/update.do?id="+id, "", "center=yes;dialogHeight=170px;dialogwidth=410px;location=no;edge=sunken;help=no;resizable=no;status=no;scrollbars=no;");
			
		}

		//查看
		function view(Id) {
			top.jzts();
			var diag = new top.Dialog();
			diag.Drag = true;
			diag.Title = "查看";
			diag.URL = 'http://localhost:9999/FHSHGL/customer/goView.do?CUSTOMER_ID='
					+ Id;
			diag.Width = 450;
			diag.Height = 500;
			diag.Modal = false; //有无遮罩窗口
			diag.ShowMaxButton = true; //最大化按钮
			diag.ShowMinButton = true; //最小化按钮 
			diag.CancelEvent = function() { //关闭事件
				if (diag.innerFrame.contentWindow.document
						.getElementById('zhongxin').style.display == 'none') {
					tosearch();
				}
				diag.close();
			};
			diag.show();
		}

		//批量操作
		function makeAll(msg) {
			bootbox
					.confirm(
							msg,
							function(result) {
								if (result) {
									var str = '';
									for (var i = 0; i < document
											.getElementsByName('ids').length; i++) {
										if (document.getElementsByName('ids')[i].checked) {
											if (str == '')
												str += document
														.getElementsByName('ids')[i].value;
											else
												str += ','
														+ document
																.getElementsByName('ids')[i].value;
										}
									}
									if (str == '') {
										bootbox
												.dialog({
													message : "<span class='bigger-110'>您没有选择任何内容!</span>",
													buttons : {
														"button" : {
															"label" : "确定",
															"className" : "btn-sm btn-success"
														}
													}
												});
										$("#zcheckbox").tips({
											side : 1,
											msg : '点这里全选',
											bg : '#AE81FF',
											time : 8
										});
										return;
									} else {
										if (msg == '确定要删除选中的数据吗?') {
											top.jzts();
											$
													.ajax({
														type : "POST",
														url : 'http://localhost:9999/FHSHGL/customer/deleteAll.do?tm='
																+ new Date()
																		.getTime(),
														data : {
															DATA_IDS : str
														},
														dataType : 'json',
														//beforeSend: validateData,
														cache : false,
														success : function(data) {
															$
																	.each(
																			data.list,
																			function(
																					i,
																					list) {
																				tosearch();
																			});
														}
													});
										}
									}
								}
							});
		};

		//导出excel
		function toExcel() {
			window.location.href = 'http://localhost:9090/psi/bankInfo/excel.do';
		}
	</script>


</body>
</html>