package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("<!DOCTYPE html >\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>头部</title>\r\n");
      out.write("<!--\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("-->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- Left Header Navigation -->\r\n");
      out.write("\t<ul class=\"nav navbar-nav-custom\">\r\n");
      out.write("\t\t<!-- Main Sidebar Toggle Button -->\r\n");
      out.write("\t\t<li><a href=\"javascript:void(0)\"\r\n");
      out.write("\t\t\tonclick=\"App.sidebar('toggle-sidebar');this.blur();\"> <i\r\n");
      out.write("\t\t\t\tclass=\"fa fa-ellipsis-v fa-fw animation-fadeInRight\"\r\n");
      out.write("\t\t\t\tid=\"sidebar-toggle-mini\"></i> <i\r\n");
      out.write("\t\t\t\tclass=\"fa fa-bars fa-fw animation-fadeInRight\"\r\n");
      out.write("\t\t\t\tid=\"sidebar-toggle-full\"></i>\r\n");
      out.write("\t\t</a></li>\r\n");
      out.write("\t\t<!-- END Main Sidebar Toggle Button -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- Header Link -->\r\n");
      out.write("\t\t<li class=\"hidden-xs animation-fadeInQuick\"><a href=\"\"><strong>WELCOME</strong></a>\r\n");
      out.write("\t\t</li>\r\n");
      out.write("\t\t<!-- END Header Link -->\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t<!-- END Left Header Navigation -->\r\n");
      out.write("\r\n");
      out.write("\t<!-- Right Header Navigation -->\r\n");
      out.write("\t<ul class=\"nav navbar-nav-custom pull-right\">\r\n");
      out.write("\t\t<!-- Search Form -->\r\n");
      out.write("\t\t<!-- <li>\r\n");
      out.write("\t\t\t\t\t\t\t\t<form action=\"page_ready_search_results.html\" method=\"post\" class=\"navbar-form-custom\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<input type=\"text\" id=\"top-search\" name=\"top-search\" class=\"form-control\" placeholder=\"Search..\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t\t\t</li> -->\r\n");
      out.write("\t\t<!-- END Search Form -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!---->\r\n");
      out.write("\t\t<li class=\"dropdown\"><a href=\"javascript:void(0)\"\r\n");
      out.write("\t\t\tclass=\"dropdown-toggle\" data-toggle=\"dropdown\"> <i\r\n");
      out.write("\t\t\t\tclass=\"fa fa-cog\"></i>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t\t<ul class=\"dropdown-menu dropdown-menu-right\">\r\n");
      out.write("\t\t\t\t<li><a href=\"page_app_email.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-exclamation-circle fa-fw pull-right\"></i> 基础资料\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li><a href=\"page_layout_static.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-pencil-square-o fa-fw pull-right\"></i> 辅助资料\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li><a href=\"");
      out.print(basePath);
      out.write("sys/sys_main.htm\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-gear fa-fw pull-right\"></i> 系统设置\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li><a href=\"page_app_media.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-book fa-fw pull-right\"></i> 操作日志\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</ul></li>\r\n");
      out.write("\t\t<!-- 最终选择栏切换按钮 -->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- 用户下拉 -->\r\n");
      out.write("\t\t<li class=\"dropdown\"><a href=\"javascript:void(0)\"\r\n");
      out.write("\t\t\tclass=\"dropdown-toggle\" data-toggle=\"dropdown\"> <!--显示用户图片--> <img\r\n");
      out.write("\t\t\t\tsrc=\"img/placeholders/avatars/avatar9.jpg\" alt=\"avatar\">\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t\t\t<ul class=\"dropdown-menu dropdown-menu-right\">\r\n");
      out.write("\t\t\t\t<li class=\"dropdown-header\"><strong>管理人：<span>敖文斌</span></strong>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li><a href=\"page_app_email.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-envelope fa-fw pull-right\"></i> 收件箱\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li><a href=\"page_app_media.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-credit-card-alt fa-fw pull-right\"></i> 账号信息\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"divider\">\r\n");
      out.write("\t\t\t\t<li>\r\n");
      out.write("\t\t\t\t<li><a href=\"javascript:void(0)\"\r\n");
      out.write("\t\t\t\t\tonclick=\"App.sidebar('toggle-sidebar-alt');\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"gi gi-settings fa-fw pull-right\"></i> 设置\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"page_ready_lock_screen.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"gi gi-lock fa-fw pull-right\"></i> 锁屏\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"page_ready_login.html\"> <i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-power-off fa-fw pull-right\"></i> 退出\r\n");
      out.write("\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t</ul></li>\r\n");
      out.write("\t\t<!-- 最终用户下拉 -->\r\n");
      out.write("\t</ul>\r\n");
      out.write("\t<!-- 最终正确的标题导航 -->\r\n");
      out.write("</body>\r\n");
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
