<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            var tdIndex = 1; 
            //初始化页面
            $(function(){
            	FormsComponents.init(); 
            });
        
            //点击添加商品按钮
            function addGoodsBtn(){
            	tdIndex = tdIndex+1;
            	
            var newTd ="<tr class=\"active\" id=\"tr_"+tdIndex+"\">";
                newTd += "<td>"+tdIndex+"</td>";
                newTd +="<td>";
                newTd +="<select  name=\"goodsCode\" class=\"form-control\" size=\"1\">";
                     
                newTd +="</select>";
                newTd +="</td>";
                newTd +="<td class=\"has-success\">"
                newTd +="<input type=\"text\" id=\"gds\" name=\"gds\" class=\"form-control\" placeholder=\"\">"; 
                newTd +="</td>";
                newTd +="<td class=\"has-success\">";
                newTd +="<input type=\"text\" id=\"gds\" name=\"gds\" class=\"form-control\" placeholder=\"\">";
                newTd +="</td>";
                newTd +="<td class=\"text-center\">";
                newTd +="<a href=\"javascript:del("+tdIndex+")\" data-toggle=\"tooltip\" title=\"删除\" class=\"btn btn-effect-ripple btn-xs btn-danger\"><i class=\"gi gi-remove_2\"></i></a>";
                newTd +="</td>";
                newTd +="</tr>";
                
             $(newTd).appendTo($("#goodsTab")); 
            }
          
            //点击删除按钮
            function del(val){
            	$("#tr_"+val).remove();
            }
        </script>
</head>
<body style="background-color: white">
    <div><h2>新增入库单</h2></div>
    <div>
    <form action="#" method="post" >
       <table>
         <tr>
            <td class="td1"><span style="color: red">*</span>仓库</td>
            <td class="td3 has-error"><select id="ruku_re" name="ruku_re" class="form-control" size="1">
                       <option value="-1">请选择仓库</option>
                       
             </select></td>
            <td class="td2">入库日期</td>
            <td class="td3 has-error"><input type="text" id="example-datepicker3" name="example-datepicker3" class="form-control input-datepicker" data-date-format="yyyy-mm-dd" placeholder="yyyy-mm-dd"></td>
         </tr>
         <tr>
            <td class="td1"><span style="color: red">*</span>入库单号</td>
            <td class="td3 has-error">
               <input type="text" id="state-success" name="state-success" class="form-control" placeholder="" readonly="readonly">
            </td>
            <td class="td2">备注</td>
            <td class="td3 has-error" rowspan="3">
              <textarea id="example-textarea-input" name="example-textarea-input" rows="7" class="form-control" placeholder="Description.."></textarea>
            </td>
         </tr>
         <tr>
             <td class="td1"><span style="color: red">*</span>入库类型</td>
             <td class="td3 has-error"><select id="ruku_re" name="ruku_re" class="form-control" size="1">
                       <option value="-1">请选择类型</option>
                       
             </select></td>
         </tr>
         <tr>
             <td class="td1"><span style="color: red">*</span>相关单据编号</td>
             <td class="td3 has-error">
                 <input type="text" id="state-success" name="state-success" class="form-control" placeholder="...">
             </td>
         </tr>
         <tr>
            <td class="td1"><span style="color: red">*</span>经手人</td>
            <td class="td3 has-error"><select id="ruku_re" name="ruku_re" class="form-control" size="1">
                       <option value="-1">请选择经手人</option>
                       
             </select></td>
            <td class="td2">制单人</td>
            <td class="td3 has-error">
               <input type="text" id="state-success" name="state-success" class="form-control" placeholder="" readonly="readonly">
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
                   <tbody>
                             <tr class="active" id="tr_1">
                                  <td>1</td>
                                  <td>
                                    <select  name="goodsCode" class="form-control" size="1">
                                       
                                    </select>
                                  </td>
                                  <td class="has-success">
                                    <input type="text" id="gds" name="gds" class="form-control" placeholder=""> 
                                  </td>
                                  <td class="has-success">
                                    <input type="text" id="gds" name="gds" class="form-control" placeholder="">
                                  </td>
                                  <td class="text-center">
                                       <a href="javascript:del(1)" data-toggle="tooltip" title="删除" class="btn btn-effect-ripple btn-xs btn-danger"><i class="gi gi-remove_2"></i></a>
                                  </td>
                             </tr>
                                                
                  </tbody>
            </table>
       <button type="submit" class="btn btn-effect-ripple btn-primary">保存</button>
       <button type="button" class="btn btn-effect-ripple btn-success" onclick="addGoodsBtn()">添加商品</button>
       <button type="button" class="btn btn-effect-ripple btn-danger" onclick="history.back()">返回</button>
    </form>
       
        
      
            
       
    </div>
</body>
</html>