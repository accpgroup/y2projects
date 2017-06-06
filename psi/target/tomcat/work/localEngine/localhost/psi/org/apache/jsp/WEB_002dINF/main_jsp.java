package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("<!DOCTYPE html ><!-- <!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"> -->\r\n");
      out.write("<html class=\"no-js\" lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("\t<meta charset=\"utf-8\">\r\n");
      out.write("\r\n");
      out.write("\t<title>我的工作台</title>\r\n");
      out.write("\r\n");
      out.write("\t<meta name=\"description\" content=\"AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest\">\r\n");
      out.write("\t<meta name=\"author\" content=\"pixelcave\">\r\n");
      out.write("\t<meta name=\"robots\" content=\"noindex, nofollow\">\r\n");
      out.write("\r\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">\r\n");
      out.write("\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/common.jsp", out, true);
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t\t<!-- 页面包装 -->\r\n");
      out.write("\t\t<!-- 在PHP版本你可以设置以下选项从公司/配置文件 -->\r\n");
      out.write("\t\t<!--\r\n");
      out.write("            \t可用的类:\r\n");
      out.write("            'page-loading'      使页面预紧器\r\n");
      out.write("        -->\r\n");
      out.write("\t\t<div id=\"page-wrapper\" class=\"page-loading\">\r\n");
      out.write("\t\t\t<!-- 预紧器 -->\r\n");
      out.write("\t\t\t<!-- 预紧器的功能 (初始化中 js/app.js) - pageLoading() -->\r\n");
      out.write("\t\t\t<!-- 只有在使用页面预紧器启用从公司/配置(PHP版本)或类的页面添加#页面包装器元素(HTML版本) -->\r\n");
      out.write("\t\t\t<div class=\"preloader\">\r\n");
      out.write("\t\t\t\t<div class=\"inner\">\r\n");
      out.write("\t\t\t\t\t<!-- Animation spinner for all modern browsers -->\r\n");
      out.write("\t\t\t\t\t<div class=\"preloader-spinner themed-background hidden-lt-ie10\"></div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<!-- Text for IE9 -->\r\n");
      out.write("\t\t\t\t\t<h3 class=\"text-primary visible-lt-ie10\"><strong>Loading..</strong></h3>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- END Preloader -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!-- Page Container -->\r\n");
      out.write("\t\t\t<!-- In the PHP version you can set the following options from inc/config file -->\r\n");
      out.write("\t\t\t<!--\r\n");
      out.write("                Available #page-container classes:\r\n");
      out.write("\r\n");
      out.write("                'sidebar-light'                                 主要的光栏(您可以添加它连同其他类)\r\n");
      out.write("\r\n");
      out.write("                'sidebar-visible-lg-mini'                       主要栏浓缩——迷你导航(> 991 px)\r\n");
      out.write("                'sidebar-visible-lg-full'                       主要栏全——全导航(> 991 px)\r\n");
      out.write("\r\n");
      out.write("                'sidebar-alt-visible-lg'                        选择栏可见默认情况下(> 991 px)(你可以把它连同其他类)\r\n");
      out.write("\r\n");
      out.write("                'header-fixed-top'                              只有添加如果类header.navbar“navbar-fixed-top”了吗\r\n");
      out.write("                'header-fixed-bottom'                           只有添加如果类header.navbar“navbar-fixed-bottom”了吗\r\n");
      out.write("\r\n");
      out.write("                'fixed-width'                                   固定宽度的布局(只能使用一个静态的头/主栏布局)\r\n");
      out.write("\r\n");
      out.write("                'enable-cookies'                                记住积极的颜色主题使饼干当从侧边栏链接(你可以把它连同其他类)\r\n");
      out.write("            -->\r\n");
      out.write("\t\t\t<div id=\"page-container\" class=\"header-fixed-top sidebar-visible-lg-full\">\r\n");
      out.write("\t\t\t\t<!-- Alternative Sidebar -->\r\n");
      out.write("\t\t\t\t<div id=\"sidebar-alt\" tabindex=\"-1\" aria-hidden=\"true\">\r\n");
      out.write("\t\t\t\t\t<!-- 只在静态布局切换选择栏按钮(可见) -->\r\n");
      out.write("\t\t\t\t\t<!--<a href=\"javascript:void(0)\" id=\"sidebar-alt-close\" onclick=\"App.sidebar('toggle-sidebar-alt');\">\r\n");
      out.write("\t\t\t\t\t\t<i class=\"fa fa-cog\"></i>\r\n");
      out.write("\t\t\t\t\t</a>-->\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<!-- 包装器滚动功能 -->\r\n");
      out.write("\t\t\t\t\t<div id=\"sidebar-scroll-alt\">\r\n");
      out.write("\t\t\t\t\t\t<!---->\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- END Wrapper for scrolling functionality -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- END Alternative Sidebar -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!-- Main Sidebar -->\r\n");
      out.write("\t\t\t\t<div id=\"sidebar\">\r\n");
      out.write("\t\t\t\t\t<!-- Sidebar Brand -->\r\n");
      out.write("\t\t\t\t\t<div id=\"sidebar-brand\" class=\"themed-background\">\r\n");
      out.write("\t\t\t\t\t\t<a href=\"index.html\" class=\"sidebar-title\">\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"fa fa-cube\"></i> <span class=\"sidebar-nav-mini-hide\"><strong>XXX进销存</strong></span>\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- END Sidebar Brand -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<!-- Wrapper for scrolling functionality -->\r\n");
      out.write("\t\t\t\t\t<!--左侧导航栏-->\r\n");
      out.write("\t\t\t\t\t<div id=\"sidebar-scroll\">\r\n");
      out.write("\t\t\t\t\t\t<!-- Sidebar Content -->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"sidebar-content\">\r\n");
      out.write("\t\t\t\t\t\t\t<!-- 侧边栏导航 -->\r\n");
      out.write("\t\t\t\t\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<!-- 侧边栏导航结束 -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<!-- 皮肤主题 -->\r\n");
      out.write("\t\t\t\t\t\t\t<!-- 预览页面上的一个主题功能可以在js /app.js - colorThemePreview() -->\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"sidebar-section sidebar-nav-mini-hide\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"sidebar-separator push\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<i class=\"fa fa-ellipsis-h\"></i>\r\n");
      out.write("\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- 选择主题开始 -->\r\n");
      out.write("\t\t\t\t\t\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "theme.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t<!-- 选择主题结束 -->\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<!-- END Color Themes -->\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!-- END Sidebar Content -->\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- END Wrapper for scrolling functionality -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<!-- Sidebar Extra Info -->\r\n");
      out.write("\t\t\t\t\t<div id=\"sidebar-extra-info\" class=\"sidebar-content sidebar-nav-mini-hide\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"push-bit\">\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"pull-right\">\r\n");
      out.write("                                <a href=\"javascript:void(0)\" class=\"text-muted\"><i class=\"fa fa-plus\"></i></a>\r\n");
      out.write("                            </span>\r\n");
      out.write("\t\t\t\t\t\t\t<small><strong>78 GB</strong> / 100 GB</small>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"progress progress-mini push-bit\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"progress-bar progress-bar-primary\" role=\"progressbar\" aria-valuenow=\"78\" aria-valuemin=\"0\" aria-valuemax=\"100\" style=\"width: 78%\"></div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"text-center\">\r\n");
      out.write("\t\t\t\t\t\t\t<small>Crafted with <i class=\"fa fa-heart text-danger\"></i> by <a href=\"http://goo.gl/vNS3I\" target=\"_blank\">pixelcave</a></small><br>\r\n");
      out.write("\t\t\t\t\t\t\t<small><span id=\"year-copy\"></span> &copy; <a href=\"http://goo.gl/RcsdAh\" target=\"_blank\">AppUI 2.7</a></small>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- END Sidebar Extra Info -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- END Main Sidebar -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!-- Main Container -->\r\n");
      out.write("\t\t\t\t<div id=\"main-container\">\r\n");
      out.write("\t\t\t\t\t<!-- Header -->\r\n");
      out.write("\t\t\t\t\t<!-- In the PHP version you can set the following options from inc/config file -->\r\n");
      out.write("\t\t\t\t\t<!--\r\n");
      out.write("                        Available header.navbar classes:\r\n");
      out.write("\r\n");
      out.write("                        'navbar-default'            for the default light header\r\n");
      out.write("                        'navbar-inverse'            for an alternative dark header\r\n");
      out.write("\r\n");
      out.write("                        'navbar-fixed-top'          for a top fixed header (fixed main sidebar with scroll will be auto initialized, functionality can be found in js/app.js - handleSidebar())\r\n");
      out.write("                            'header-fixed-top'      has to be added on #page-container only if the class 'navbar-fixed-top' was added\r\n");
      out.write("\r\n");
      out.write("                        'navbar-fixed-bottom'       for a bottom fixed header (fixed main sidebar with scroll will be auto initialized, functionality can be found in js/app.js - handleSidebar()))\r\n");
      out.write("                            'header-fixed-bottom'   has to be added on #page-container only if the class 'navbar-fixed-bottom' was added\r\n");
      out.write("                    -->\r\n");
      out.write("\t\t\t\t\t<header class=\"navbar navbar-inverse navbar-fixed-top\">\r\n");
      out.write("\t\t\t\t\t\t<!-- 头部信息 -->\r\n");
      out.write("\t\t\t\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t\t\t\t</header>\r\n");
      out.write("\t\t\t\t\t<!-- END Header -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<!-- Page content -->\r\n");
      out.write("\t\t\t\t\t<div id=\"page-content\">\r\n");
      out.write("\t\t\t\t\t\t<!-- 内容 -->\r\n");
      out.write("\t\t\t\t\t\t<!-- onload=\"setIframeHeight(this)height: auto;\" -->\r\n");
      out.write("\t\t\t\t\t\t<iframe style=\"width: 100%;\" src=\"\" onload=\"setIframeHeight(this)\" name=\"mainFrm\" id=\"mainFrm\" frameborder=\"0\"></iframe>\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<!-- END Page Content -->\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- END Main Container -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- END Page Container -->\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- END Page Wrapper -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->\r\n");
      out.write("\t\t<script src=\"");
      out.print(basePath );
      out.write("js/vendor/jquery-2.2.4.min.js\"></script>\r\n");
      out.write("\t\t<script src=\"");
      out.print(basePath );
      out.write("js/vendor/bootstrap.min.js\"></script>\r\n");
      out.write("\t\t<script src=\"");
      out.print(basePath );
      out.write("js/plugins.js\"></script>\r\n");
      out.write("\t\t<script src=\"");
      out.print(basePath );
      out.write("js/app.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- Load and execute javascript code used only in this page -->\r\n");
      out.write("\t\t<script src=\"");
      out.print(basePath );
      out.write("js/pages/readyDashboard.js\"></script>\r\n");
      out.write("\t\t<script>\r\n");
      out.write("\t\t\t$(function() {\r\n");
      out.write("\t\t\t\t/*初始化仪表盘*/\r\n");
      out.write("\t\t\t\tReadyDashboard.init();\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
