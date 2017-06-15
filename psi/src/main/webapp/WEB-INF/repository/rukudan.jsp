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

        <!-- Load and execute javascript code used only in this page -->
        <script src="<%=basePath%>/js/pages/formsComponents.js"></script>
        <script>
            //初始化页面
            $(function(){
            	FormsComponents.init(); 
            });
        
           //点击高级查询按钮
           function gjSearch(){
        	 
        	 var s = $("#advanceCondition").css("display");  
        	 if(s=="none"){
        		 $("#advanceCondition").css("display","block"); 
        	 }
        	 if(s=="block"){
        		 $("#advanceCondition").css("display","none"); 
        	 }
           }
           //点击普通查询按钮
           function ptSerach(){
        	   var date = $("#date_begin").val();
        	   alert(date);
           }
           
           //点击新增按钮
           function addBtn(){
        	   window.location.href="ruku/addRuKuDan.do";
           }
        </script>


</head>
	<body style="background-color: white">
	     <div><h2>入库单</h2></div>
	     
         <table>
		     <tr>
				<td><select id="ruku_re" name="ruku_re" class="form-control" size="1">
                       <option value="-1">全部仓库</option>
                       
                </select></td>
	            <td><select id="ruku_type" name="ruku_type" class="form-control" size="1">
	                    <option value="0">全部类型</option>
	                    
	            </select></td>
	            <td>
	               &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                              
	                                              入库单号
	            </td>
		         <td>
                     <input type="text" id="ruku_billcode" name="ruku_billcode" class="form-control" placeholder="请输入">
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
		                                日期
		         </td>
                <td>
					<div class="input-group input-daterange" data-date-format="yyyy-mm-dd">
                                   <input type="text" id="date_begin" name="date_begin" class="form-control"  placeholder="起始日期">
                                   <span class="input-group-addon"><i class="fa fa-chevron-right"></i></span>
                                   <input type="text" id="date_end" name="date_end" class="form-control"  placeholder="截止日期">
                    </div>
                </td>
		         <td>
		           &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                     
		                                 经手人
		         </td>
		         <td><select id="deal_emp" name="deal_emp" class="form-control" size="1">
                       <option value="-1">全部员工</option>
                       
                </select></td>
		         <td>
		            &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                  
		                                    制单人
		         </td>
		         <td><select id="create_emp" name="create_emp" class="form-control" size="1">
                       <option value="-1">全部仓库</option>
                       
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
                                                <tr class="active">
                                                    <td><strong>1</strong></td>
                                                    <td><strong>1</strong></td>
                                                    <td><strong>1</strong></td>
                                                    <td><strong>1</strong></td>
                                                    <td><strong>1</strong></td>
                                                    <td><strong>1</strong></td>
                                                    <td>user1@example.com</td>
                                                    <td><a href="javascript:void(0)" class="label label-warning">Pending..</a></td>
                                                    <td class="text-center">
                                                        <a href="javascript:void(0)" data-toggle="tooltip" title="查看" class="btn btn-effect-ripple btn-xs btn-success"><i class="fa fa-eye"></i></a>
                                                        <a href="javascript:void(0)" data-toggle="tooltip" title="编辑" class="btn btn-effect-ripple btn-xs btn-danger"><i class="fa fa-pencil"></i></a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><strong>2</strong></td>
                                                    <td><strong>2</strong></td>
                                                    <td><strong>2</strong></td>
                                                    <td><strong>2</strong></td>
                                                    <td><strong>2</strong></td>
                                                    <td><strong>2</strong></td>
                                                    <td>user2@example.com</td>
                                                    <td><a href="javascript:void(0)" class="label label-success">Active</a></td>
                                                    <td class="text-center">
                                                        <a href="javascript:void(0)" data-toggle="tooltip" title="查看" class="btn btn-effect-ripple btn-xs btn-success"><i class="fa fa-eye"></i></a>
                                                        <a href="javascript:void(0)" data-toggle="tooltip" title="编辑" class="btn btn-effect-ripple btn-xs btn-danger"><i class="fa fa-pencil"></i></a>
                                                    </td>
                                                </tr>
                                                <tr class="active">
                                                    <td><strong>3</strong></td>
                                                    <td><strong>3</strong></td>
                                                    <td><strong>3</strong></td>
                                                    <td><strong>3</strong></td>
                                                    <td><strong>3</strong></td>
                                                    <td><strong>3</strong></td>
                                                    <td>user3@example.com</td>
                                                    <td><a href="javascript:void(0)" class="label label-info">On hold..</a></td>
                                                    <td class="text-center">
                                                        <a href="javascript:void(0)" data-toggle="tooltip" title="查看" class="btn btn-effect-ripple btn-xs btn-success"><i class="fa fa-eye"></i></a>
                                                        <a href="javascript:void(0)" data-toggle="tooltip" title="编辑" class="btn btn-effect-ripple btn-xs btn-danger"><i class="fa fa-pencil"></i></a>
                                                    </td>
                                                </tr>
                                                
                                                
                                                
                                                
                                                
                                                
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
              <select>
                <option>5</option>
                <option>10</option>
                <option>20</option>
              </select>
                                    条</div>                            
            <div class="text-right" style="float: right;">
                <ul class="pagination pagination-sm">
                    <li class="disabled"><a href="javascript:void(0)"><i class="fa fa-chevron-left"></i></a></li>
                    <li><a href="javascript:void(0)">1</a></li>
                    <li class="active"><a href="javascript:void(0)">2</a></li>
                    <li><a href="javascript:void(0)">3</a></li>
                    <li><a href="javascript:void(0)"><i class="fa fa-chevron-right"></i></a></li>
                    </ul>
           </div>							
							
		
	
</body>
</html>
