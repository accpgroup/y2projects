<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
	<head>
		<base href="http://localhost:9090/psi/">
        <!-- Appui样式 -->
        <link rel="shortcut icon" href="<%=basePath%>/img/favicon.png">
        <link rel="apple-touch-icon" href="<%=basePath%>/img/icon57.png" sizes="57x57">
        <link rel="apple-touch-icon" href="<%=basePath%>/img/icon72.png" sizes="72x72">
        <link rel="apple-touch-icon" href="<%=basePath%>/img/icon76.png" sizes="76x76">
        <link rel="apple-touch-icon" href="<%=basePath%>/img/icon114.png" sizes="114x114">
        <link rel="apple-touch-icon" href="<%=basePath%>/img/icon120.png" sizes="120x120">
        <link rel="apple-touch-icon" href="<%=basePath%>/img/icon144.png" sizes="144x144">
        <link rel="apple-touch-icon" href="<%=basePath%>/img/icon152.png" sizes="152x152">
        <link rel="apple-touch-icon" href="<%=basePath%>/img/icon180.png" sizes="180x180">
        <!-- END Icons -->

        <!-- Stylesheets -->
        <!-- Bootstrap is included in its original form, unaltered -->
       <link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css"> 

        <!-- Related styles of various icon packs and plugins -->
       <link rel="stylesheet" href="<%=basePath%>/css/plugins.css">

       <link rel="stylesheet" href="<%=basePath%>/css/main.css"> 

       <link rel="stylesheet" href="<%=basePath%>/css/themes.css">

        <!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
        <script src="<%=basePath%>/js/vendor/jquery-2.2.4.min.js"></script>
        <script src="<%=basePath%>/js/vendor/bootstrap.min.js"></script>
        <script src="<%=basePath%>/js/plugins.js"></script>
        <script src="<%=basePath%>/js/app.js"></script>

        <!-- ckeditor.js, load it only in the page you would like to use CKEditor (it's a heavy plugin to include it with the others!) -->
        <script src="<%=basePath%>/js/plugins/ckeditor/ckeditor.js"></script>

       <!-- 弹框效果样式文件 -->
       <style> 
        .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%; 
            background-color: black; 
            z-index:500; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
            display: none; 
            position: absolute; 
            top: 12%; 
            left: 12%; 
            width: 76%; 
            height: 76%; 
            padding:0px; 
            border: 2px solid orange; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
        } 
    </style> 



        <!-- Load and execute javascript code used only in this page -->
        <script src="<%=basePath%>/js/pages/formsComponents.js"></script>
        <script>
            //初始化页面
            $(function(){
            	FormsComponents.init(); 
            });
        
            
            $(function(){
            	 //点击高级查询按钮
            	$("#gjSearch").click(function(){
            	 var s = $("#advanceCondition").css("display");  
               	 if(s=="none"){
               		 $("#advanceCondition").css("display","block"); 
               	 }
               	 if(s=="block"){
               		 $("#advanceCondition").css("display","none"); 
               	 }
            	});
            	 
            	//点击新增
            	$("#addBtn").click(function(){
            		
            		 window.location.href="ruku/addRuKuDan.do";
            	});
            	 
            	$("#page_count").change(function(){
            		$("#index").val(1);
            		$("#inreForm").submit();
            	});
            	
            	$("[data-toggle='tooltip']").click(function(){
            		var inReCode = $("[data-toggle='tooltip']").attr("id");
            		//发送请求加载明细的商品信息
            		$.getJSON("store/getInReGoods.do",{"inReCode":inReCode},function(data){
            			$.each(data,function(index,val){
            				$("#tbody").empty();
            			var tr	="<tr>";
                            tr +="<th>"+(index+1)+"</th>";
                            tr +="<th>"+val.gdId+"</th>";
                            tr +="<th>"+val.gdName+"</th>";
                            tr +="<th>"+val.gdMemCode+"</th>";
                            tr +="<th>"+val.gdType+"</th>";
                            tr +="<th>"+val.gdAmount+"</th>";
                            tr +="<th>"+val.gdRemark+"</th>";
                            tr +="</tr>";
                            $(tr).appendTo($("#tbody")); 
            			});
            			//弹出模式化窗口
                		document.getElementById('light').style.display='block';
            		});
            	});
            	
            	
            });
            
           //点击普通查询按钮
           function ptSerach(){
        	   $("#inreForm").submit();
           }
           
           function tiao(i){
        	  $("#index").val(i);
        	  $("#inreForm").submit();
           }
           
        </script>


</head>
	<body style="background-color: white">
	<form action="ruku/loadAllRuKu.do" method="post" id="inreForm">
	     <div><h2>入库单</h2></div>
         <table>
		     <tr>
				<td><select id="st_id" name="repositoryId" class="form-control" size="1">
                       <option value="-1">全部仓库</option>
                       <c:forEach items="${requestScope.stores }" var="s">
                          <c:if test="${s.stid == requestScope.pageInfo.repositoryId}">
                              <option value="${s.stid }" selected="selected">${s.stname }</option>
                          </c:if>
                          <c:if test="${s.stid != requestScope.pageInfo.repositoryId}">
                              <option value="${s.stid }">${s.stname }</option>
                          </c:if>
                       </c:forEach>
                </select></td>
	            <td><select id="inReType" name="inReType" class="form-control" size="1">
	                    <option value="-1">全部类型</option>
	                    <c:forEach items="${requestScope.mList }" var="map">
                          <c:if test="${map.value == requestScope.pageInfo.inReType}">
                              <option value="${map.value }" selected="selected">${map.value }</option>
                          </c:if>
                          <c:if test="${map.value != requestScope.pageInfo.inReType}">
                              <option value="${map.value }">${map.value }</option>
                          </c:if>
                       </c:forEach>
	            </select></td>
	            <td>
	               &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                              
	                                              入库单号:&nbsp;&nbsp;
	            </td>
		         <td>
                     <input type="text" id="inReCode" name="inReCode" class="form-control" placeholder="请输入" value="${requestScope.pageInfo.inReCode }">
                 </td>
         
                <td>
                    &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <button type="button" class="btn btn-rounded btn-default" id="ptSearch" onclick="ptSerach()">查询</button>
                    <button type="button" class="btn btn-rounded btn-success" id="gjSearch" onclick="gjSearch()" >高级查询</button>
                </td>
                <td >
                    <div style="margin-left: 400px;">
                        <button type="button" class="btn btn-rounded btn-primary" id="addBtn" onclick="addBtn()">新增</button>
                    </div>
                </td>
		     </tr>
		 </table>
		 
		
		 <div id="advanceCondition" style="display: none;">
		     <table>
		       <tr>
		         <td>&nbsp;&nbsp;
		                                日期:&nbsp;&nbsp;
		         </td>
                <td>
					<div class="input-group input-daterange" data-date-format="yyyy-mm-dd">
                                   <input type="text" id="beginTime" name="beginTime" class="form-control"  placeholder="起始日期" value="${requestScope.pageInfo.beginTime }">
                                   <span class="input-group-addon"><i class="fa fa-chevron-right"></i></span>
                                   <input type="text" id="endTime" name="endTime" class="form-control"  placeholder="截止日期" value="${requestScope.pageInfo.endTime }">
                    </div>
                </td>
		         <td>
		           &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     
		                                 经手人:&nbsp;&nbsp;
		         </td>
		         <td><select id="dealEmpId" name="dealEmpId" class="form-control" size="1">
                       <option value="-1">全部员工</option>
                       <c:forEach items="${requestScope.users }" var="u">
                          <c:if test="${u.id == requestScope.pageInfo.dealEmpId}">
                              <option value="${u.id }" selected="selected">${u.cnname }</option>
                          </c:if>
                          <c:if test="${u.id != requestScope.pageInfo.dealEmpId}">
                              <option value="${u.id }">${u.cnname }</option>
                          </c:if>
                       </c:forEach>
                </select></td>
		         <td>
		            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                  
		                                    制单人:&nbsp;&nbsp;
		         </td>
		         <td><select id="createEmpId" name="createEmpId" class="form-control" size="1">
                       <option value="-1">全部员工</option>
                       <c:forEach items="${requestScope.users }" var="u">
                          <c:if test="${u.id == requestScope.pageInfo.createEmpId}">
                              <option value="${u.id }" selected="selected">${u.cnname }</option>
                          </c:if>
                          <c:if test="${u.id != requestScope.pageInfo.createEmpId}">
                              <option value="${u.id }">${u.cnname }</option>
                          </c:if>
                       </c:forEach>
                </select></td>
		       </tr>
		     </table>
		 </div>
	 	
	 	
	 	 <!-- Row Styles Content -->
                                    <div class="table-responsive" style="padding-top: 10px;">
                                        <table class="table table-borderless table-vcenter">
                                            <thead>
                                                <tr class="danger">
                                                    <th>序号</th>
                                                    <th>单号</th>
                                                    <th>入库仓库</th>
                                                    <th>入库类型</th>
                                                    <th>入库日期</th>
                                                    <th>相关单据编号</th>
                                                    <th>经手人</th>
                                                    <th>制单人</th>
                                                    <th style="width: 80px;" class="text-center"><i class="fa fa-flash"></i></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${requestScope.pageInfo.inReList }" var="info" varStatus="k">
                                                <c:if test="${k.count%2==1 }">
                                                    <tr class="active">
                                                </c:if>
                                                <c:if test="${k.count%2==0 }">
                                                    <tr class="success">
                                                </c:if>
                                                    <td>${k.count }</td>
                                                    <td>${info.inReCode }</td>
                                                    <td>
                                                        <c:forEach items="${requestScope.stores }" var="s">
                                                           <c:if test="${info.repositoryId==s.stid }">${s.stname }</c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>${info.inReType }</td>
                                                    <td>${info.recordeDate }</td>
                                                    <td>${info.billCode }</td>
                                                    <td>
                                                        <c:forEach items="${requestScope.users }" var="u">
                                                           <c:if test="${info.dealEmpId==u.id }">${u.cnname }</c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td>
                                                        <c:forEach items="${requestScope.users }" var="u">
                                                           <c:if test="${info.createEmpId==u.id }">${u.cnname }</c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td class="text-center">
                                                        <a href="javascript:void(0)" data-toggle="tooltip" title="查看" class="btn btn-effect-ripple btn-xs btn-success" id="${info.inReCode }"><i class="fa fa-eye"></i></a>
                                                        <!-- <a href="javascript:void(0)" data-toggle="tooltip" title="编辑" class="btn btn-effect-ripple btn-xs btn-danger"><i class="fa fa-pencil"></i></a> -->
                                                    </td>
                                                    </tr>
                                            </c:forEach>
                                              
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- 表哥的行样式有：info，danger，warning，success ，active-->
                                    <!-- END Row Styles Content -->
                                </div>
                                <!-- END Row Styles Block -->
                            </div>
                        </div>
                        <!-- END Tables Row -->		
               
            <!--分页指针 -->
            <div style="float: left;margin-top: 17px;">每页
              <select id="page_count" name="count">
                <c:if test="${requestScope.pageInfo.count==5 }">
                   <option value="5" selected="selected">5</option>
                   <option value="10">10</option>
                   <option value="15">15</option>
                </c:if>
                <c:if test="${requestScope.pageInfo.count==10 }">
                   <option value="5">5</option>
                   <option value="10" selected="selected">10</option>
                   <option value="15">15</option>
                </c:if>
                <c:if test="${requestScope.pageInfo.count==15 }">
                   <option value="5">5</option>
                   <option value="10">10</option>
                   <option value="15" selected="selected">15</option>
                </c:if>
              </select>
                                    条</div>                            
            <div class="text-right" style="float: right;">
                <ul class="pagination pagination-sm">
                    <c:if test="${requestScope.pageInfo.index == 1 }">
                      <li class="disabled"><a href="javascript:void(0)"><i class="fa fa-chevron-left"></i></a></li>
                    </c:if>
                    <c:if test="${requestScope.pageInfo.index != 1 }">
                      <li><a href="javascript:tiao(${requestScope.pageInfo.index - 1})"><i class="fa fa-chevron-left"></i></a></li>
                    </c:if>
                    
                    <li class="active"><a href="javascript:void(0)">${requestScope.pageInfo.index }</a></li>
                    
                    <c:if test="${requestScope.pageInfo.index == requestScope.pageInfo.maxPage}">
                      <li class="disabled"><a href="javascript:void(0)"><i class="fa fa-chevron-right"></i></a></li>
                    </c:if>
                    <c:if test="${requestScope.pageInfo.index != requestScope.pageInfo.maxPage }">
                      <li><a href="javascript:tiao(${requestScope.pageInfo.index + 1})"><i class="fa fa-chevron-right"></i></a></li>
                    </c:if>
                    </ul>
           </div>							
			<input type="hidden" name="index" id="index" value="${requestScope.pageInfo.index}"/><!-- 用来保存当前页数 -->				
		   
		   <!-- 查看明细弹框div -->
		   <div id="light" class="white_content">
		<div class="modal-header">
		     <a1 class="modal-title" id="addTacticsItemModalLabel">入库单商品明细</a1>
                <a style="padding-left: 750px" href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">×</a>
                </div>
              <div class="modal-body">
         
                <div class="tl lh30 scrollspy-example sku-table-box">
                  <table  class="table table-striped table-hover" style="margin-bottom:0">
                    <thead class=" table-bordered">
                      <tr>
                        <th>序号</th>
                        <th>商品编号</th>
                        <th>商品名称</th>
                        <th>商品助记码</th>
                        <th>商品类型</th>
                        <th>入库数量</th>
                        <th>备注</th>
                      </tr>
                    </thead>
                    <tbody id="tbody" style='font-weight:normal'></tbody>
                  </table>
                </div>
                </div>
	</form>
</body>
</html>
