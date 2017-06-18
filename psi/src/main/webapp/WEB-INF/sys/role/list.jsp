<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<!--[if IE 9]>   <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
<meta charset="utf-8">

<title>基础资料</title>

<meta name="description"
	content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
<meta name="author" content="pixelcave">
<meta name="robots" content="noindex, nofollow">

<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<jsp:include page="/common.jsp" />

<style type="text/css">
fieldset{padding:.35em .625em .75em;margin:0 2px;border:1px solid silver}
legend{padding:.5em;border:0;width:auto}
<!--
fieldset div {
	float:left;
	width:20%;
	line-height:25px;
	text-align:left;
}
td div {
	float:left;
	width:20%;
	line-height:25px;
	text-align:left;
}
/* a{text-decoration: none;}
i:HOVER {
	color: #13C19F;
} */
-->
</style>
</head>

<body>
	<div id="page-wrapper" class="page-loading">
		<!-- 预紧器 -->
		<!-- 预紧器功能(初始化在js / app.js)-新() -->
		<!-- Used only if page preloader enabled from inc/config (PHP version) or the class 'page-loading' is added in #page-wrapper element (HTML version) -->
		<!-- <div class="preloader">
		    <div class="inner">
		    	所有现代浏览器动画转轮
		        <div class="preloader-spinner themed-background hidden-lt-ie10"></div>
		
		        Text for IE9
		        <h3 class="text-primary visible-lt-ie10"><strong>Loading..</strong></h3>
		    </div>
		</div> -->
		<!-- END Preloader -->

		<div id="page-container" class="sidebar-visible-lg-full"style="background-color: white;">
			<div id="page-content" style="background-color: white;">
				<div>
				<table border="0" style="width: 100%">
				<tr>
					<td width="12%">
						<h4>角色权限管理</h4>
					</td>
				</tr>
				<tr>
					<td align="right">选择角色：</td>
					<td width="30%">
						<!-- example-select2 alert(this.value);-->
						<select id="" name="roles" onchange="showLimits(this.value,'<%=basePath %>');" class="select-select2" style="width: 100%;" data-placeholder="请选择角色">
	                        <!-- 所需数据占位符属性与Select2插件 -->
	                        <option></option>
	                        <c:forEach items="${roles }" var="r">
	                       		<option value="${r.id }" <c:if test='${r.id == roleId }'>selected="selected"</c:if>>${r.name }</option>
	                        </c:forEach>
                        </select>
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a onclick="openEditRoleName('<%=basePath %>');" style="cursor: pointer; ">
							<i class="fa fa-pencil" >修改角色名称</i>
						</a>
					</td>
					</tr>
				</table>
				</div>
				
				<!-- 显示说明信息 -->
				<!-- border: 1px solid red; -->
				<div style=" padding-left: 130px; padding-top: 20px;">
					<p><font color="A2B1D0">说明：<br>
					1、具备该角色的用户登录后显示操作员工作台；<br>
					2、修改角色权限后，所有赋予此角色的员工账号对应权限均将修改；<br>
					3、系统管理员角色不允许改名，也不允许修改其操作权限；</font><br><font color="red">
					4、“禁止查看商品订货价”不得与【商品管理、商品删除、商品导出、促销管理权限】同时勾选；<br>
					5、“禁止查看订单金额”不得与【订单修改、订/退单审核、财务审核、代下订/退单、订单商品统计查<br>
					看、订单商品统计导出、发货统计查看、发货统计导出、资金所有权限、报表所有权限】同时勾选。<br>
					6、、需要实现仅让业务员看到自己客户商品报价并且能代下单的场景，请勾选“禁止查看商品订货价”、<br>
					“报价单查看”、“代下订单”权限。<br></font></p>
				</div>
				
				<div style="padding-left: 50px;"><!-- style="border: 1px solid red;" -->
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td>角色权限明细：</td>
						</tr>
						<c:if test="${! empty moduleNames }">
							<tr>
								<td>
									<c:forEach items="${moduleNames }" var="m">
										<fieldset>
											<legend><font size="2">${m.value }</font></legend>
											
											<c:forEach items="${permissions }" var="p">
												<c:if test="${p.module==m.key }">
												
													<c:forEach items="${rpMaps}" var="rp">
						                         		<c:if test="${rp.permission_id == p.id}">
						                            		<c:set value="checked" var="xxx" scope="page"/>
						                          		</c:if>	
										 	      	</c:forEach>
												
													<div>
														<label class="csscheckbox csscheckbox-primary"><input type="checkbox" ${xxx }><span></span>${p.name }</label>
													</div>
													
													<c:remove var="xxx" scope="page"/>
												</c:if>
											</c:forEach>
										</fieldset>
									</c:forEach>
								</td>
							</tr>
						</c:if>
					</table>
				</div>
         	</div>
         	
         	
       </div>
     </div>

     
     <!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
	<script src="<%=basePath%>js/vendor/jquery-2.2.4.min.js"></script>
	<script src="<%=basePath%>js/vendor/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/plugins.js"></script>
	<script src="<%=basePath%>js/app.js"></script>

	<script src="<%=basePath%>js/pages/readyDashboard.js"></script>
	<script>
		$(function() {
			/*初始化仪表盘*/
			ReadyDashboard.init();
		});
		function showLimits(roleId,basePath){
			//alert("角色ID："+roleId+"   项目地址："+basePath);
			location.href=basePath+"role/showLimits.do?roleId="+roleId
		}
		
		//打开修改角色名称页面
		function openEditRoleName(basePath){
			
			//layer.msg("请选择你要修改的角色名称");
			var roleId = $("[name=roles] option:selected").val();
			if(roleId == ""){
				//alert(roleId);
				layer.msg("请选择你要修改的角色名称",{
					icon:5,
					offset:"100px"
				});
				return false;
			}
			//alert(roleId);
			layer.open({
				title : "修改角色名称",
				type : 2,
				content : "edit.htm?roleId="+roleId, 
				area : [ "600px", "170px" ],// 设置宽高basePath+
				offset : "40px",
				moveOut : true,// 允许鼠标拖动
				skin : "layui-layer-lan1",
				cancel : function(index) {
					// 用于区分下面confirm的index
					/* var openIndex = index;
					layer.confirm("确定要关闭吗？", {
						title : "系统提示",
						icon : 3,
						btn : [ "确认", "取消" ]
					}, function(index, layero) {
						layer.close(layer.index);
						layer.close(openIndex);
					}, function() {
						
					}); */
				}
			});
		};
	</script>
	<script type="text/javascript" src="<%=basePath %>layer/layer.js"></script>
</body>
</html>