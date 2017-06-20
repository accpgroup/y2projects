<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html> 
<html lang="en">
<head>
<meta charset="utf-8">
<base href="http://localhost:9090/psi/">
<title>系统设置</title>

<meta name="description"
	content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<link rel="shortcut icon" href="img/favicon.png">
<link rel="apple-touch-icon" href="img/icon57.png" sizes="57x57">
<link rel="apple-touch-icon" href="img/icon72.png" sizes="72x72">
<link rel="apple-touch-icon" href="img/icon76.png" sizes="76x76">
<link rel="apple-touch-icon" href="img/icon114.png" sizes="114x114">
<link rel="apple-touch-icon" href="img/icon120.png" sizes="120x120">
<link rel="apple-touch-icon" href="img/icon144.png" sizes="144x144">
<link rel="apple-touch-icon" href="img/icon152.png" sizes="152x152">
<link rel="apple-touch-icon" href="img/icon180.png" sizes="180x180">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/plugins.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/themes.css">
<script src="js/vendor/modernizr-3.3.1.min.js"></script>
<script type="text/javascript" src="js/baseinfo/ajax.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

<script>
	$(function(){
		//jquery获取request值
		var wc="${u.gdwoocu }";
		var st="${u.gdsort }";
		var ut="${u.gdunit }";
		var gd="${u.gdorigin }";
		$.ajax({
			url:"baseAjax/good.do",
			type:"post",
			dataType:"json",
			success:function(data){
				$.each(data,function(index,k){
					if(k.code=="gd_woocu"){
						if(k.value==wc){
							$("#woocu").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#woocu").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}else if(k.code=="gd_sort"){
						if(k.value==st){
							$("#sort").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#sort").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}else if(k.code=="p_unit"){
						if(k.value==ut){
							$("#gunit").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#gunit").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}else{
						if(k.value==gd){
							$("#org").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#org").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}
					
				});
			}
		});
	})
</script>
<!--裁剪并上传图片所用文件-->
<link href="head/cropper.min.css" rel="stylesheet">
<link href="head/sitelogo.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">

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
				<h3 class="text-primary visible-lt-ie10">
					<strong>增加</strong>
				</h3>
			</div>
		</div>
		<!-- END Preloader -->
		<!--<div style="background-color: #FFFFFF;">
				<button class="btn btn-default"><i class="fa fa-cog"></i> 取消</button>
				<button class="btn btn-success"><i class="fa fa-plus"></i> 保存</button>
			</div>-->
		<!--<button class="btn btn-default"><i class="fa fa-cog"></i> 取消</button>
				<button class="btn btn-success"><i class="fa fa-plus"></i> 保存</button>-->
		<div id="page-container" class="sidebar-visible-lg-full">
			<div style="background-color: #EBEEF2;">
				<button class="btn btn-danger" onclick="javascript:window.location.href='goodInfo/goto.do'">
					<i class="gi gi-remove_2"></i> 取消
				</button>
				<button class="btn btn-success" id="update">
					<i class="gi gi-ok_2"></i> 修改
				</button>
				<script>
					$("#update").click(function(){
						if(confirm("请确认是否修改?")==true)
							$("#frm").submit();
					})
				</script>
			</div>
			<div id="page-content" style="background-color: #FFFFFF;">
				<!--<div class="block-title">
						<h2>基础信息</h2>
					</div>-->

				<form action="goodInfo/update2.do" method="post" id="frm"
					class="form-horizontal form-bordered">
					<input type="hidden" name="gdid" value="${u.gdid }" />
					<div class="block-title">
						<h3>
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">| 修改 |  商品基础信息</font>
						</h3>
					</div>
					<table border="0" width="100%" height="">
						<tr>
							<td width="10%"></td>
							<td></td>
							<td width="10%"></td>
							<td></td>
						</tr>
						<tr height="50px">
							<td align="center">商品名</td>
							<td><input type="text" class="form-control"
								placeholder="请输入商品名称" name="gdname" value='${u.gdname }'></td>
							<td align="center">助记码</td>
							<td><input type="text" class="form-control"
								placeholder="请输入商品助记码" name="gdmemcode" value='${u.gdmemcode }'></td>
						</tr>
						
						<tr height="50px">
							
							<td align="center">商品型号</td>
							<td><input type="text" class="form-control"
								placeholder="请输入商品型号" name="gdtype" value='${u.gdtype }'></td>
							<td align="center">商品规格</td>
							<td><input type="text" class="form-control"
								placeholder="请输入商品规格" name="gdnorms" value='${u.gdnorms }'></td>
						</tr>
						
						<tr height="50px">
							<td align="center">库存上限</td>
							<td><input type="text" class="form-control"
								placeholder="请输入库存上限" name="gdmax" value='${u.gdmax }'></td>
							<td align="center">库存下线</td>
							<td><input type="text" class="form-control"
								placeholder="请输入库存下线" name="gdmin" value='${u.gdmin }'></td>
						</tr>
						<tr>
							<td align="center">商品预售价</td>
							<td><input type="text" class="form-control"
								placeholder="请输入商品预售价" name="gdpreprice" value='${u.gdpreprice }'></td>
							<td align="center">商品成本价</td>
							<td><input type="text" class="form-control"
								placeholder="请输入商品成本价" name="gdcosprice" value='${u.gdcosprice }'></td>
						</tr>
						<tr height="50px">
							<td align="center">供货信息</td>
							<td><input type="text" class="form-control"
								placeholder="暂无" name="gdpostfree" value='${u.gdpostfree }'></td>
							<td align="center">备注</td>
							<td><input type="text" class="form-control"
								placeholder="暂无" name="gdremark" value='${u.gdremark }'></td>
						</tr>
					</table>

					<br>
					<br>
					<div class="block-title">
						<h3>
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">商品选择信息</font>
						</h3>
					</div>
					<table border="0" width="70%" height="" style="border-collapse:separate; border-spacing:0px 10px;">
						<tr>
							<td width="15%"></td>
							<td></td>
						</tr>
						<tr>
							<td align="center">生产厂家</td>
							<td><select id="woocu" name="gdwoocu"
								class="form-control" data-placeholder="请选择生产厂家"
								style="width: 500px;">
								
							</select></td>
						</tr>
						<tr>
							<td align="center">商品类别</td>
							<td><select id="sort" name="gdsort"
								class="form-control" data-placeholder="请选择商品类别"
								style="width: 500px;">
							</select></td>
						</tr>
						<tr>
							<td align="center">商品单位</td>
							<td><select id="gunit" name="gdunit"
								class="form-control" data-placeholder="请选择商品所属单位"
								style="width: 500px;">
							</select></td>
						</tr>
						<tr>
							<td align="center">商品产地</td>
							<td><select id="org" name="gdorigin"
								class="form-control" data-placeholder="请选择商品产地"
								style="width: 500px;">
							</select></td>
						</tr>
					</table>

					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<div class="block-title">
						<h3>
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">over...</font>
						</h3>
					</div>

				</form>
				<br>

				<div class="user_pic" style="margin: 10px;">
					<img src="" />
				</div>

				<!--这里用来显示图片上传的弹出框-->
				<div class="modal fade" id="avatar-modal" aria-hidden="true"
					aria-labelledby="avatar-modal-label" role="dialog" tabindex="-1">
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
											<button class="btn btn-danger" type="button"
												style="height: 35px;"
												onClick="$('input[id=avatarInput]').click();">请选择图片</button>
											<span id="avatar-name"></span> <input
												class="avatar-input hide" id="avatarInput"
												name="avatar_file" type="file">
										</div>
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
													<button class="btn btn-danger fa fa-undo"
														data-method="rotate" data-option="-90" type="button"
														title="Rotate -90 degrees">向左旋转</button>
												</div>
												<div class="btn-group">
													<button class="btn  btn-danger fa fa-repeat"
														data-method="rotate" data-option="90" type="button"
														title="Rotate 90 degrees">向右旋转</button>
												</div>
											</div>
											<div class="col-md-5" style="text-align: right;">
												<button class="btn btn-danger fa fa-arrows"
													data-method="setDragMode" data-option="move" type="button"
													title="移动">
													<span class="docs-tooltip" data-toggle="tooltip" title=""
														data-original-title="$().cropper(&quot;setDragMode&quot;, &quot;move&quot;)">
													</span>
												</button>
												<button type="button"
													class="btn btn-danger fa fa-search-plus" data-method="zoom"
													data-option="0.1" title="放大图片">
													<span class="docs-tooltip" data-toggle="tooltip" title=""
														data-original-title="$().cropper(&quot;zoom&quot;, 0.1)">
														<!--<span class="fa fa-search-plus"></span>-->
													</span>
												</button>
												<button type="button"
													class="btn btn-danger fa fa-search-minus"
													data-method="zoom" data-option="-0.1" title="缩小图片">
													<span class="docs-tooltip" data-toggle="tooltip" title=""
														data-original-title="$().cropper(&quot;zoom&quot;, -0.1)">
														<!--<span class="fa fa-search-minus"></span>-->
													</span>
												</button>
												<button type="button" class="btn btn-danger fa fa-refresh"
													data-method="reset" title="重置图片">
													<span class="docs-tooltip" data-toggle="tooltip" title=""
														data-original-title="$().cropper(&quot;reset&quot;)"
														aria-describedby="tooltip866214">
												</button>
											</div>
											<div class="col-md-3">
												<button
													class="btn btn-danger btn-block avatar-save fa fa-save"
													type="button" data-dismiss="modal">保存修改</button>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
				<script src="head/html2canvas.min.js" type="text/javascript"
					charset="utf-8"></script>
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
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="head/cropper.js"></script>
	<script src="head/sitelogo.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/app.js"></script>

	<!-- Load and execute javascript code used only in this page -->
	<script src="js/pages/uiTables.js"></script>
	<script>
			$(function() {
				UiTables.init();
			});
		</script>
</body>

</html>