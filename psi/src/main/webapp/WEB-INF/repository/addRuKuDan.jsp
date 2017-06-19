<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增入库单</title>
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

       <style type="text/css">
          .td1{
          padding-left: 20px;}
          .td2{
          padding-left: 300px;}
          .td3{
          padding-left: 20px;}
       </style>

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
            
            
            $(function(){
            	FormsComponents.init(); 
            });
           
            $(function(){
            	//alert($("#createEmpId").val());
            	//页面初始化，异步加载下拉框数据
            	$.get("store/getReps.do",function(data){
            		//绑定仓库
            		$.each(data.relist,function(index,val){
            			$("<option value=\""+val.stid+"\">"+val.stname+"</option>").appendTo($("#st_id"));
            		});
            		//绑定入库单编号
            		$("#inReCode").val(data.code);
            		
            		//绑定入库类型
            		$.each(data.rukeType,function(index,val){
            			$("<option value=\""+val.value+"\">"+val.value+"</option>").appendTo($("#inReType"));
            		});
            		
            		//绑定经手人
            		$.each(data.emps,function(index,val){
            			$("<option value=\""+val.id+"\">"+val.cnname+"</option>").appendTo($("#dealEmpId"));
            		});
            	});
            	
            	$("a").click(function(){
            		$(this).parent().parent().remove();
            		for(var i=0;i<$("#tb tr").length;i++){
                  	   $("#tb tr").eq(i).children().first().html(i+1);
                     }
            	});
            	
            });
            
            //入库类型下拉框改变事件
            function typeChange(val){
            	
            	if(val!="-1"){
            		$("#billText").css("display","none");
            		$("#billCode").css("display","block");
            	   //发送异步请求，获取相关单号
            	   $.get("store/getAllBills.do",{"val":val},function(data){
            		   $("#billCode").html(" ");
            		   $.each(data,function(index,val){
               			$("<option value=\""+val+"\">"+val+"</option>").appendTo($("#billCode"));
               		   });
            	   });
            	}else{
            		$("#billText").css("display","block");
            		$("#billCode").css("display","none");
            	}
            }
            
            //点击添加商品按钮
            function addGoodsBtn(){
               $("#goodsTab").append($("#trDiv tr:first").clone(true));
               for(var i=0;i<$("#tb tr").length;i++){
            	   $("#tb tr").eq(i).children().first().html(i+1);
               }
            }
           
        </script>
</head>
<body style="background-color: white">
    <div><h2>新增入库单</h2></div>
    <div>
    <form action="inRe/addCode.do" method="post" >
       <table>
         <tr>
            <td class="td1"><span style="color: red">*</span>仓库</td>
            <td class="td3 has-error"><select id="st_id" name="repositoryId" class="form-control" size="1">
                       <option value="-1">请选择仓库</option>
                       
             </select></td>
            <td class="td2">入库日期</td>
            <td class="td3 has-error">
              <input type="text" id="ruku_date" name="recordeDate" class="form-control input-datepicker" data-date-format="yyyy-mm-dd" placeholder="年-月-日"></td>
         </tr>
         <tr>
            <td class="td1"><span style="color: red">*</span>入库单号</td>
            <td class="td3 has-error">
               <input type="text" id="inReCode" name="inReCode" class="form-control" placeholder="" readonly="readonly" >
            </td>
            <td class="td2">备注</td>
            <td class="td3 has-error" rowspan="3">
              <textarea id="beizhu" name="beizhu" rows="7" class="form-control" placeholder="请填写备注信息..."></textarea>
            </td>
         </tr>
         <tr>
             <td class="td1"><span style="color: red">*</span>入库类型</td>
             <td class="td3 has-error">
               <select id="inReType" name="inReType" class="form-control" size="1" onchange="typeChange(this.value)">
                     <option value="-1">请选择类型</option>
               </select>
             </td>
         </tr>
         <tr>
             <td class="td1"><span style="color: red">*</span>相关单据编号</td>
             <td class="td3 has-error">
                 <input type="text" id="billText" class="form-control" placeholder="请先确定入库类型" readonly="readonly">
                 <select id="billCode" name="billCode" class="form-control" size="1" style="display: none;">
                   
                 </select>
             </td>
         </tr>
         <tr>
            <td class="td1"><span style="color: red">*</span>经手人</td>
            <td class="td3 has-error"><select id="dealEmpId" name="dealEmpId" class="form-control" size="1">
                       <option value="-1">请选择经手人</option>
                       
             </select></td>
            <td class="td2">制单人</td>
            <td class="td3 has-error">
               <input type="hidden" id="createEmpId" name="createEmpId" value="2">
               <input type="text" id="createEmpName" name="createEmpName" class="form-control" placeholder="" readonly="readonly" value="杨飞">
            </td>
         </tr>
       </table>
       
         <table class="table table-borderless table-vcenter" id="goodsTab">
                  <thead>
                           <tr class="success">
                                <th>序号</th>
                                <th>商品编号</th>
                                <th>入库数量</th>
                                <th>备注</th>
                                <th style="width: 80px;" class="text-center"><i class="fa fa-flash"></i></th>
                           </tr>
                   </thead>
                   <tbody id="tb">
                             <tr class="active">
                                  <td>1</td>
                                  <td>
                                    <select  name="goodsId" class="form-control" size="1">
                                       <c:forEach items="${sessionScope.yf_goods }" var="goods">
                                          <option value="${goods.gdid }" title="名称:${goods.gdname} &#10代码:${goods.gdmemcode}&#10代码:${goods.gdtype}&#10公司:${goods.gdwoocu}">${goods.gdid }</option>
                                       </c:forEach>
                                    </select>
                                  </td>
                                  <td class="has-success">
                                    <input type="text" name="inAmount" class="form-control" placeholder=""> 
                                  </td>
                                  <td class="has-success">
                                    <input type="text" name="remark" class="form-control" placeholder="">
                                  </td>
                                  <td class="text-center">
                                       
                                  </td>
                             </tr>
                                                
                  </tbody>
            </table>
       <button type="submit" class="btn btn-effect-ripple btn-primary">保存</button>
       <button type="button" class="btn btn-effect-ripple btn-success" onclick="addGoodsBtn()">添加商品</button>
       <button type="button" class="btn btn-effect-ripple btn-danger" onclick="history.back()">返回</button>
    </form>
       
        
      
            
       
    </div>
    
    <div style="display: none" id="trDiv">
        <table>
         <tr class="active">
                <td></td>
                <td>
                     <select  name="goodsId" class="form-control" size="1">
                            <c:forEach items="${sessionScope.yf_goods }" var="goods">
                                  <option value="${goods.gdid }" title="名称:${goods.gdname} &#10代码:${goods.gdmemcode}&#10代码:${goods.gdtype}&#10公司:${goods.gdwoocu}">${goods.gdid }</option>
                            </c:forEach>
                     </select>
                </td>
                <td class="has-success">
                     <input type="text" name="inAmount" class="form-control" placeholder=""> 
                </td>
                <td class="has-success">
                     <input type="text" name="remark" class="form-control" placeholder="">
                </td>
                <td class="text-center">
                     <a href="javascript:void(0)" data-toggle="tooltip" title="删除" class="btn btn-effect-ripple btn-xs btn-danger"><i class="gi gi-remove_2"></i></a> 
                </td>
        </tr>
      </table>
    </div>
</body>
</html>