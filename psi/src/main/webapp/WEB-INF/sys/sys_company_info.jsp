<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en"><!--<![endif]-->
	<head>
		<meta charset="utf-8">

		<title>公司信息</title>
		
		<meta name="description" content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
		<meta name="author" content="pixelcave">
		<meta name="robots" content="noindex, nofollow">

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<jsp:include page="/common.jsp"></jsp:include>
		
		<!--裁剪并上传图片所用文件-->
		<link href="<%=basePath %>head/cropper.min.css" rel="stylesheet">
		<link href="<%=basePath %>head/sitelogo.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">

		<style type="text/css">
		.avatar-btns button {
			height: 35px;
		}
		</style>
	</head>

	<body>
		<div id="page-wrapper" class="page-loading">
			<!-- 预紧器 -->
			<!-- 预紧器功能(初始化在js / app.js)-新() -->
			<!-- Used only if page preloader enabled from inc/config (PHP version) or the class 'page-loading' is added in #page-wrapper element (HTML version) -->
			<div class="preloader">
				<div class="inner">
					<!-- 所有现代浏览器动画转轮 -->
					<div class="preloader-spinner themed-background hidden-lt-ie10"></div>
					<!-- Text for IE9 -->
					<h3 class="text-primary visible-lt-ie10"><strong>Loading..</strong></h3>
				</div>
			</div>
			<!-- END Preloader -->
			<div id="page-container" class="sidebar-visible-lg-full">
				<div style="background-color: #EBEEF2;">
					<button class="btn btn-danger"><i class="gi gi-remove_2"></i> 取消</button>
					<button class="btn btn-success"><i class="gi gi-ok_2"></i> 保存</button>
				</div>
				<div id="page-content" style="background-color: #FFFFFF;">
					<!--<div class="block-title">
						<h2>基础信息</h2>
					</div>-->

					<form action="page_forms_components.html" method="post" class="form-horizontal form-bordered" onsubmit="return false;">
						<div class="block-title">
							<h3>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">基础信息</font></h3>
						</div>
						<table border="0" width="100%" height="">
							<tr>
								<td width="10%"></td>
								<td></td>
								<td width="10%"></td>
								<td></td>
							</tr>
							<tr height="50px">
								<td align="center">公司名称</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入公司名称">
								</td>
								<td rowspan="2" align="center">
									公司log
								</td>
								<td rowspan="2">
									<!--显示弹出图片框-->
									<div data-toggle="modal" data-target="#avatar-modal" style="border: dashed 1px #CCC;width: 70px;height: 70px;cursor: pointer;">
										<i class="gi gi-plus" style="margin-top: 30px;margin-left: 25px;"></i>
									</div>
								</td>
							</tr>
							<tr>
								<td align="center">行业类别</td>
								<td>
									<select id="example-chosen" name="example-chosen" class="select-chosen" data-placeholder="请选择行业类型" style="width: 250px;">
										<option></option>
										<!-- 所需数据占位符属性选择的插件 -->
										<option value="United States">United States</option>
										<option value="United Kingdom">United Kingdom</option>
										<option value="Afghanistan">Afghanistan</option>
									</select>
								</td>
							</tr>
							<tr height="50px">
								<td align="center">区域</td>
								<td>
									<select id="example-chosen" name="example-chosen" class="select-chosen" data-placeholder="请选择区域" style="width: 250px;">
										<option></option>
										<!-- 所需数据占位符属性选择的插件 -->
										<option value="United States">United States</option>
										<option value="United Kingdom">United Kingdom</option>
										<option value="Afghanistan">Afghanistan</option>
									</select>
								</td>
								<td align="center">详细地址</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入公司详细地址">
								</td>
							</tr>
							<tr>
								<td align="center">邮编：</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入邮编">
								</td>
								<td align="center">电话</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入公司电话">
								</td>
							</tr>
							<tr height="50px">
								<td align="center">传真</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入公司传真">
								</td>
								<td align="center">联系人</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入联系人姓名">
								</td>
							</tr>
							<tr>
								<td align="center">职位</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入联系人的职位">
								</td>
								<td align="center">公司网址</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入公司网址">
								</td>
							</tr>
							<tr height="50px">
								<td align="center">手机</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入联系人手机号码">
								</td>
								<td align="center">QQ</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入联系人QQ号码">
								</td>
							</tr>
							<tr>
								<td align="center">公司介绍</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入公司简介">
								</td>
								<td align="center">邮箱</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入电子邮箱">
								</td>
							</tr>
						</table>

						<br><br>
						<div class="block-title">
							<h3>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">财务信息</font></h3>
						</div>
						<table border="0" width="100%" height="">
							<tr>
								<td width="10%"></td>
								<td></td>
								<td width="10%"></td>
								<td></td>
							</tr>
							<tr>
								<td align="center">纳税人识别号：</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入纳税人识别号">
								</td>
								<td align="center">发票抬头：</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入发票抬头">
								</td>
							</tr>
						</table>

						<br><br>
						<div class="block-title">
							<h3>&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">服务支持设置</font></h3>
						</div>
						<table border="0" width="100%" height="">
							<tr>
								<td width="10%"></td>
								<td width="40%"></td>
								<td width="10%"></td>
								<td width="40%"></td>
							</tr>
							<tr height="60px">
								<td align="center">服务热线</td>
								<td>
									<input type="text" class="form-control" placeholder="请输入服务热线">
								</td>
								<td></td>
								<td></td>
							</tr>
							<tr height="40px">
								<td align="center">对外联系人</td>
								<td style="background-color: #EFF1F8;">
									<!--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;-->
									<span style="margin-left: 50px;">姓名</span>
									<span style="margin-left: 50px;">手机</span>
									<span style="margin-left: 50px;">QQ</span>
									<span style="margin-left: 50px;">邮箱</span>
								</td>
								<td></td>
								<td></td>
							</tr>
						</table>
						<table border="0" width="100%" height="">
							<tr height="50px">
								<td width="10%"></td>
								<td width="40%">
									<a><i class="gi gi-plus"></i>增加对外联系人</a>
								</td>
								<td width="10%"></td>
								<td width="40%"></td>
							</tr>
						</table>

					</form><br>
					
					<div class="user_pic" style="margin: 10px;">
						<img src=""/>
					</div>

					<!--这里用来显示图片上传的弹出框-->
					<div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
						<div class="modal-dialog modal-lg">
							<div class="modal-content">
								<!--<form class="avatar-form" action="upload-logo.php" enctype="multipart/form-data" method="post">-->
								<form class="avatar-form">
									<div class="modal-header">
										<button class="close" data-dismiss="modal" type="button">&times;</button>
										<h4 class="modal-title" id="avatar-modal-label">上传图片</h4>
									</div>
									<div class="modal-body">
										<div class="avatar-body">
											<div class="avatar-upload">
												<input class="avatar-src" name="avatar_src" type="hidden">
												<input class="avatar-data" name="avatar_data" type="hidden">
												<label for="avatarInput" style="line-height: 35px;">图片上传</label>
												<button class="btn btn-danger" type="button" style="height: 35px;" onClick="$('input[id=avatarInput]').click();">请选择图片</button>
												<span id="avatar-name"></span>
												<input class="avatar-input hide" id="avatarInput" name="avatar_file" type="file"></div>
											<div class="row">
												<div class="col-md-9">
													<div class="avatar-wrapper"></div>
												</div>
												<div class="col-md-3">
													<div class="avatar-preview preview-lg" id="imageHead"></div>
													<!--<div class="avatar-preview preview-md"></div>
														<div class="avatar-preview preview-sm"></div>-->
												</div>
											</div>
											<div class="row avatar-btns">
												<div class="col-md-4">
													<div class="btn-group">
														<button class="btn btn-danger fa fa-undo" data-method="rotate" data-option="-90" type="button" title="Rotate -90 degrees"> 向左旋转</button>
													</div>
													<div class="btn-group">
														<button class="btn  btn-danger fa fa-repeat" data-method="rotate" data-option="90" type="button" title="Rotate 90 degrees"> 向右旋转</button>
													</div>
												</div>
												<div class="col-md-5" style="text-align: right;">
													<button class="btn btn-danger fa fa-arrows" data-method="setDragMode" data-option="move" type="button" title="移动">
											            <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
											            </span>
										            </button>
													<button type="button" class="btn btn-danger fa fa-search-plus" data-method="zoom" data-option="0.1" title="放大图片">
											            <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, 0.1)">
											              <!--<span class="fa fa-search-plus"></span>-->
											            </span>
											        </button>
													<button type="button" class="btn btn-danger fa fa-search-minus" data-method="zoom" data-option="-0.1" title="缩小图片">
											            <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;zoom&quot;, -0.1)">
											              <!--<span class="fa fa-search-minus"></span>-->
											            </span>
											        </button>
													<button type="button" class="btn btn-danger fa fa-refresh" data-method="reset" title="重置图片">
												        <span class="docs-tooltip" data-toggle="tooltip" title="" data-original-title="$().cropper(&quot;reset&quot;)" aria-describedby="tooltip866214">
												    </button>
												</div>
												<div class="col-md-3">
													<button class="btn btn-danger btn-block avatar-save fa fa-save" type="button" data-dismiss="modal"> 保存修改</button>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
					<script src="<%=basePath %>head/html2canvas.min.js" type="text/javascript" charset="utf-8"></script>
					<script type="text/javascript">
						//做个下简易的验证  大小 格式 
						$('#avatarInput').on('change', function(e) {
							var filemaxsize = 1024 * 5; //5M
							var target = $(e.target);
							var Size = target[0].files[0].size / 1024;
							if(Size > filemaxsize) {
								alert('图片过大，请重新选择!');
								$(".avatar-wrapper").childre().remove;
								return false;
							}
							if(!this.files[0].type.match(/image.*/)) {
								alert('请选择正确的图片!')
							} else {
								var filename = document.querySelector("#avatar-name");
								var texts = document.querySelector("#avatarInput").value;
								var teststr = texts; //你这里的路径写错了
								testend = teststr.match(/[^\\]+\.[^\(]+/i); //直接完整文件名的
								filename.innerHTML = testend;
							}

						});

						$(".avatar-save").on("click", function() {
							var img_lg = document.getElementById('imageHead');
							// 截图小的显示框内的内容
							html2canvas(img_lg, {
								allowTaint: true,
								taintTest: false,
								onrendered: function(canvas) {
									canvas.id = "mycanvas";
									//生成base64图片数据
									var dataUrl = canvas.toDataURL("image/jpeg");
									var newImg = document.createElement("img");
									newImg.src = dataUrl;
									imagesAjax(dataUrl)
								}
							});
						})

						function imagesAjax(src) {
							var data = {};
							data.img = src;
							data.jid = $('#jid').val();
							$.ajax({
								url: "upload-logo.php",
								data: data,
								type: "POST",
								dataType: 'json',
								success: function(re) {
									if(re.status == '1') {
										$('.user_pic img').attr('src', src);
									}
								}
							});
						}
					</script>
				</div>
			</div>
		</div>
		<!-- END Page Wrapper -->

		<!-- jQuery,引导,jQuery插件和定制的JS代码 -->
		<script src="<%=basePath %>js/vendor/jquery-2.2.4.min.js"></script>
		<script src="<%=basePath %>js/vendor/bootstrap.min.js"></script>
		<script src="<%=basePath %>head/cropper.js"></script>
		<script src="<%=basePath %>head/sitelogo.js"></script>
		<script src="<%=basePath %>js/plugins.js"></script>
		<script src="<%=basePath %>js/app.js"></script>

		<!-- Load and execute javascript code used only in this page -->
		<script src="<%=basePath %>js/pages/uiTables.js"></script>
		<script>
			$(function() {
				UiTables.init();
			});
		</script>
	</body>
</html>