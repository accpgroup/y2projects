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
<html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">

        <title>错误页面</title>

        <meta name="description" content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<jsp:include page="/common.jsp"/>
    </head>
    <body>
        <!-- Full Background -->
        <!-- For best results use an image with a resolution of 1280x1280 pixels (prefer a blurred image for smaller file size) -->
        <img src="<%=basePath %>img/placeholders/layout/error_full_bg.jpg" alt="Full Background" class="full-bg full-bg-bottom animation-pulseSlow">
        <!-- END Full Background -->

        <!-- Error Container -->
        <div id="error-container">
            <div class="row text-center">
                <div class="col-md-6 col-md-offset-3">
                    <h2 class="text-light animation-fadeInQuick"><strong>失落的感觉？</strong></h2>
                    <h3 class="text-muted animation-fadeInQuickInv"><em>很抱歉，此页面无法找到....</em></h3>
                </div>
                <div class="col-md-4 col-md-offset-4">
                    <form action="page_ready_search_results.html" method="post" class="push">
                        <div class="input-group input-group-lg">
                            <input type="text" id="search-term" name="search-term" class="form-control" placeholder="Search PSI..">
                            <div class="input-group-btn">
                                <button type="submit" class="btn btn-effect-ripple btn-primary"><i class="fa fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                    <a href="first.htm" class="btn btn-effect-ripple btn-default"><i class="fa fa-arrow-left"></i> 回去</a>
                </div>
            </div>
        </div>
        <!-- END Error Container -->
    </body>
</html>