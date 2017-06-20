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

<!--裁剪并上传图片所用文件-->
<link href="head/cropper.min.css" rel="stylesheet">
<link href="head/sitelogo.css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
<script type="text/javascript" src="js/baseinfo/ajax.js"></script>
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script>
	$(function(){
		//jquery获取request值
		var ut="${u.unitregion }";
		var tr="${u.unittrade }";
		var st="${u.unitsort }";
		var ct="${u.unitcustomer}";
		var pw="${u.unitpayway }";
		var kd="${u.unitnature}";
		//alert(tr);
		//alert(ut);
		//alert(st)
		//alert(ct);
		//alert(pw);
		$.ajax({
			url:"baseAjax/unit.do",
			type:"post",
			dataType:"json",
			success:function(data){
				$.each(data,function(index,k){
					if(k.code=="regionName"){
						if(k.value==ut){
							$("#reg").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#reg").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}else if(k.code=="trade"){
						if(k.value==tr){
							$("#trade").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#trade").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}else if(k.code=="unitSort"){
						if(k.value==st){
							$("#sort").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#sort").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}else if(k.code=="pay_way"){
						if(k.value==pw){
							$("#payway").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#payway").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}else if(k.code=="unitCustomer"){
						//$("#unitCustomer").append("<option value='"+k.value+"'>"+k.value+"</option>");
						if(k.value==ct){
							$("#unitCustomer").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#unitCustomer").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}else{
						if(k.value==kd){
							$("#nature").append("<option value='"+k.value+"' selected='selected'>"+k.value+"</option>");  
						}else{
							$("#nature").append("<option value='"+k.value+"'>"+k.value+"</option>");
						}
					}
					
				});
			}
		});
	})
</script>
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
				<button class="btn btn-danger"  onclick="javascript:window.location.href='unitInfo/goto.do'">
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

				<form action="unitInfo/update2.do" method="post"
					class="form-horizontal form-bordered" id="frm">
					<div class="block-title">
						<h3>
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">| 修改 |
								-----> 往来公司基础信息</font>
						</h3>
					</div>
					<input type="hidden" name="id" value="${u.id }" />
					<table border="0" width="100%" height="">
						<tr>
							<td width="10%"></td>
							<td></td>
							<td width="10%"></td>
							<td></td>
						</tr>
						<tr height="50px">
							<td align="center">单位名称</td>
							<td><input type="text" class="form-control" placeholder="请输入单位名称"
								value='${u.unitname }' name="unitname"></td>
							<td align="center">单位简称</td>
							<td><input type="text" class="form-control" placeholder="请输入单位简称"
								value='${u.unitsname }' name="unitsname"></td>
						</tr>

						<tr height="50px">
							<td align="center">联系人</td>
							<td><input type="text" class="form-control"
								placeholder="请输入联系人" name="unitlinkman1" value='${u.unitlinkman1 }'></td>
							<td align="center">助记码</td>
							<td><input type="text" class="form-control"
								placeholder="请输入助记码" name="unitmemcode" value='${u.unitmemcode }'></td>
						</tr>
						<tr>
							<td align="center">税号</td>
							<td><input type="text" class="form-control"
								placeholder="请输入税号" name="unitduty" value='${u.unitduty }'></td>
							<td align="center">公司地址</td>
							<td><input type="text" class="form-control"
								placeholder="请输入公司地址" name="unitaddress" value='${u.unitaddress }'></td>
						</tr>
						<tr height="50px">
							<td align="center">开户银行</td>
							<td><input type="text" class="form-control"
								placeholder="请输入开户银行" name="unitccount" value='${u.unitccount }'></td>
							<td align="center">银行账号</td>
							<td><input type="text" class="form-control"
								placeholder="请输入银行账号" name="unitaccount" value='${u.unitaccount }'></td>
						</tr>

						<tr height="50px">
							<td align="center">挂报电号</td>
							<td><input type="text" class="form-control"
								placeholder="请输入挂报电号" name="unitcable" value='${u.unitcable }'></td>
							<td align="center">业务电话</td>
							<td><input type="text" class="form-control"
								placeholder="请输入业务电话" name="unitsercall" value='${u.unitsercall }'></td>
						</tr>

						<tr height="50px">
							<td align="center">法人代表</td>
							<td><input type="text" class="form-control"
								placeholder="请输入法人代表" name="unitlegal" value='${u.unitlegal }'></td>
							<td align="center">财务电话</td>
							<td><input type="text" class="form-control"
								placeholder="请输入财务电话" name="unitfanphone" value='${u.unitfanphone }'></td>
						</tr>

						<tr height="50px">
							<td align="center">邮编</td>
							<td><input type="text" class="form-control"
								placeholder="请输入邮箱" name="unitzipcode" value='${u.unitzipcode }'></td>
							<td align="center">业务员</td>
							<td><input type="text" class="form-control"
								placeholder="请输入业务员" name="unitsalaman" value='${u.unitsalaman }'></td>
						</tr>

						<tr height="50px">
							<td align="center">传真</td>
							<td><input type="text" class="form-control"
								placeholder="请输入传真" name="unitfax" value='${u.unitfax }'></td>
							<td align="center">移动电话</td>
							<td><input type="text" class="form-control"
								placeholder="请输入移动电话" name="unitmobphone" value='${u.unitmobphone }'></td>
						</tr>

						<tr height="50px">
							<td align="center">Email</td>
							<td><input type="text" class="form-control"
								placeholder="请输入Email" name="unitemail" value='${u.unitemail }'></td>
							<td align="center">公司主页</td>
							<td><input type="text" class="form-control"
								placeholder="请输入公司主页" name="unithttp" value='${u.unithttp }'></td>
						</tr>

						<tr height="50px">
							<td align="center">汇款地址</td>
							<td><input type="text" class="form-control"
								placeholder="请输入汇款地址" name="unitcolladdress" value='${u.unitcolladdress }'></td>
							<td align="center">主营业务</td>
							<td><input type="text" class="form-control"
								placeholder="请输入主营业务" name="unitmainbiss" value='${u.unitmainbiss }'></td>
						</tr>
						<tr height="50px">
							<td align="center">备注</td>
							<td><textarea colspan="3" cols="30" class="form-control"
									placeholder="请输入备注" name="unitremark">${u.unitremark }</textarea></td>
						</tr>
					</table>

					<br> <br>
					<div class="block-title">
						<h3>
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="#51D0ED">往来公司选择信息</font>
						</h3>
					</div>
					<table border="0" width="70%" height=""
						style="border-collapse: separate; border-spacing: 0px 10px;">
						<tr>
							<td width="15%"></td>
							<td></td>
						</tr>
						<tr>
							<td align="center">所属地区</td>
							<td><select id="reg" name="unitregion"
								class="form-control" data-placeholder="请选择商品类别"
								style="width: 500px; height: 40px">

							</select></td>
						</tr>
						<tr>
							<td align="center">所属行业</td>
							<td><select id="trade" name="unittrade"
								class="form-control" data-placeholder="请选择商品类别"
								style="width: 500px; height: 40px">
							</select></td>
						</tr>
						<tr>
							<td align="center">单位类别</td>
							<td><select id="sort" name="unitsort"
								class="form-control" data-placeholder="请选择商品所属单位"
								style="width: 500px; height: 40px">
									<!-- 所需数据占位符属性选择的插件 -->
							</select></td>
						</tr>
						<tr>
							<td align="center">收付款方式</td>
							<td><select id="payway" name="unitpayway"
								class="form-control" data-placeholder="请选择商品产地"
								style="width: 500px; height: 40px">
							</select></td>
						</tr>
						<tr>
							<td align="center">客户性质</td>
							<td><select id="unitCustomer" name="unitcustomer"
								class="form-control" data-placeholder="请选择商品产地"
								style="width: 500px; height: 40px">
							</select></td>
						</tr>
						<tr>
							<td align="center">单位性质</td>
							<td><select id="nature" name="unitnature" class="form-control" data-placeholder="请选择商品产地"
								style="width: 500px; height: 40px">
							</select></td>
						</tr>
					</table>

					<br> <br> <br> <br> <br> <br> <br>
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