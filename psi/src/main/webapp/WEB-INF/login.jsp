<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
<jsp:include page="/common.jsp"/>
</head>

<body>
        <!-- 登录界面背景图 -->
        <img src="<%=basePath %>img/placeholders/layout/login2_full_bg.jpg" alt="Full Background" class="full-bg animation-pulseSlow">
        
        <!-- Login Container -->
        <div id="login-container">
            <!-- Login Header -->
            <h1 class="h2 text-light text-center push-top-bottom animation-pullDown">
                <i class="fa fa-cube text-light-op"></i> <strong>易进销</strong>
            </h1>
            <!-- END Login Header -->

            <!-- Login Block -->
            <div class="block animation-fadeInQuick">
                <!-- 登录标题 -->
                <div class="block-title">
                    <h2>用户登录</h2>
                </div>
                <!-- 登录标题结束 -->

                <!-- Login Form -->
                <form id="form-login" action="login.htm" method="post" class="form-horizontal">
                    <div class="form-group">
                        <label for="login-email" class="col-xs-12">用户名</label>
                        <div class="col-xs-12">
                            <input type="text" id="login-email" name="username" class="form-control" placeholder="请输入用户名" value="admin">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="login-password" class="col-xs-12">密码</label>
                        <div class="col-xs-12">
                            <input type="password" id="login-password" name="password" class="form-control" placeholder="请输入密码" value="123456">
                        </div>
                    </div>
                    <div class="form-group form-actions">
                        <div class="col-xs-8">
                            <label class="csscheckbox csscheckbox-primary">
                                <input type="checkbox" id="login-remember-me" name="login-remember-me"><span></span> 记住我?
                            </label>
                        </div>
                        <div class="col-xs-4 text-right">
                            <button type="submit" class="btn btn-effect-ripple btn-sm btn-success">登录</button>
                        </div>
                    </div>
                </form>
                <!-- END Login Form -->
            </div>
            <!-- END Login Block -->

            <!-- Footer -->
            <footer class="text-muted text-center animation-pullUp">
                <small>2017-06-01 &copy; <a href="http://goo.gl/RcsdAh" target="_blank">PSI 1.0</a></small>
            </footer>
            <!-- END Footer -->
        </div>
        <!-- END Login Container -->

        <!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
        <script src="<%=basePath %>js/vendor/jquery-2.2.4.min.js"></script>
        <script src="<%=basePath %>js/vendor/bootstrap.min.js"></script>
        <script src="<%=basePath %>js/plugins.js"></script>
        <script src="<%=basePath %>js/app.js"></script>

        <!-- Load and execute javascript code used only in this page -->
        <script src="<%=basePath %>js/pages/readyLogin.js"></script>
        <script>$(function(){ ReadyLogin.init(); });</script>
    </body>
</html>