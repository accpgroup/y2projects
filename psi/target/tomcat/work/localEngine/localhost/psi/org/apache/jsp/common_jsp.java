package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class common_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!-- 公用的文件 -->\r\n");
      out.write("\r\n");

	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";

      out.write("\r\n");
      out.write("<!-- 图标 -->\r\n");
      out.write("<!-- 下面的图标可以替换为你自己的,他们所使用的桌面和移动浏览器 -->\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"");
      out.print(basePath );
      out.write("img/favicon.png\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"");
      out.print(basePath );
      out.write("img/icon57.png\" sizes=\"57x57\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"");
      out.print(basePath );
      out.write("img/icon72.png\" sizes=\"72x72\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"");
      out.print(basePath );
      out.write("img/icon76.png\" sizes=\"76x76\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"");
      out.print(basePath );
      out.write("img/icon114.png\" sizes=\"114x114\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"");
      out.print(basePath );
      out.write("img/icon120.png\" sizes=\"120x120\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"");
      out.print(basePath );
      out.write("img/icon144.png\" sizes=\"144x144\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"");
      out.print(basePath );
      out.write("img/icon152.png\" sizes=\"152x152\">\r\n");
      out.write("<link rel=\"apple-touch-icon\" href=\"");
      out.print(basePath );
      out.write("img/icon180.png\" sizes=\"180x180\">\r\n");
      out.write("\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(basePath );
      out.write("css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(basePath );
      out.write("css/plugins.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(basePath );
      out.write("css/main.css\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(basePath );
      out.write("css/themes.css\">\r\n");
      out.write("<script src=\"");
      out.print(basePath );
      out.write("js/vendor/modernizr-3.3.1.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
