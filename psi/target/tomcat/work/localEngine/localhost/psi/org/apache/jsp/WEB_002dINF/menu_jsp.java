package org.apache.jsp.WEB_002dINF;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>菜单</title>\r\n");
      out.write("<!--\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\">\r\n");
      out.write("-->\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<ul class=\"sidebar-nav\">\r\n");
      out.write("\t\t<!--<li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"index.html\" class=\" active\"><i class=\"gi gi-compass sidebar-nav-icon\"></i><span class=\"sidebar-nav-mini-hide\">Dashboard</span></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t</li>-->\r\n");
      out.write("\t\t<!--导航栏的分割点 ...   -->\r\n");
      out.write("\t\t<li class=\"sidebar-separator\"><i class=\"fa fa-ellipsis-h\"></i></li>\r\n");
      out.write("\r\n");
      out.write("\t\t<!--开始-->\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- 订单 -->\r\n");
      out.write("\t\t<li><a href=\"#\" class=\"sidebar-nav-menu\"><i\r\n");
      out.write("\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide\"></i><i\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-icon gi gi-notes_2\"></i><span\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-mini-hide\">订单</span></a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>订单管理</a>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"test/email.do\" target=\"mainFrm\">订货单</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_error.html\">退货单</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>订单统计</a>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_profile.html\">出库/发货记录</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_forum.html\">订单商品统计（明细）</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_pricing_tables.html\">订单商品统计（按客户）</a>\r\n");
      out.write("\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_article.html\">订单商品统计（按商品）</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_timeline.html\">发货统计</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- 商品 -->\r\n");
      out.write("\t\t<li><a href=\"#\" class=\"sidebar-nav-menu\"><i\r\n");
      out.write("\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide\"></i><i\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-icon gi gi-shopping_bag\"></i><span\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-mini-hide\">商品</span></a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<!--商品管理-->\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>商品管理</a>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">商品列表</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--库存管理-->\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>库存管理</a>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_profile.html\">商品库存</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_profile.html\">商品入库</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_forum.html\">商品出库</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_forum.html\">库存盘点</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_forum.html\">出入库明细</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_pricing_tables.html\">商品收发汇总</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_article.html\">成本调整</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_timeline.html\">期末结转</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--采购管理-->\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>采购管理</a>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">供应商管理</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">智能采购</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">采购订单</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">采购待入库</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t<!--客户-->\r\n");
      out.write("\t\t<li><a href=\"#\" class=\"sidebar-nav-menu\"><i\r\n");
      out.write("\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide\"></i><i\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-icon gi gi-group\"></i><span\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-mini-hide\">客户</span></a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<!--客户管理-->\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>客户管理</a>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">客户列表</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">客户反馈</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--服务管理-->\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>服务管理</a>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_profile.html\">XXXXX</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_profile.html\">XXXXXXXX</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_forum.html\">XXXXXXXX</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t<!--资金-->\r\n");
      out.write("\t\t<li><a href=\"#\" class=\"sidebar-nav-menu\"><i\r\n");
      out.write("\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide\"></i><i\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-icon gi gi-coins\"></i><span\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-mini-hide\">资金</span></a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<!--资金管理-->\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>资金管理</a>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">收款确认</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">资金账户</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">收款账户</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!--资金统计-->\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>资金统计</a>\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_profile.html\">收支明细</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_profile.html\">订单收款统计</a>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t<!--营销-->\r\n");
      out.write("\t\t<li><a href=\"#\" class=\"sidebar-nav-menu\"><i\r\n");
      out.write("\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide\"></i><i\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-icon gi gi-shop_window\"></i><span\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-mini-hide\">营销</span></a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<!--营销管理-->\r\n");
      out.write("\t\t\t\t<li><a href=\"#\" class=\"sidebar-nav-submenu\"><i\r\n");
      out.write("\t\t\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator\"></i>营销管理</a> <!--自己根据业务需求来填写相应的功能模块-->\r\n");
      out.write("\t\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">XXXXXX</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">XXXXXX</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li><a href=\"page_ready_blank.html\">XXXXXX</a></li>\r\n");
      out.write("\t\t\t\t\t</ul></li>\r\n");
      out.write("\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t<!--报表-->\r\n");
      out.write("\t\t<li><a href=\"#\" class=\"sidebar-nav-menu\"><i\r\n");
      out.write("\t\t\t\tclass=\"fa fa-chevron-left sidebar-nav-indicator sidebar-nav-mini-hide\"></i><i\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-icon gi gi-pie_chart\"></i><span\r\n");
      out.write("\t\t\t\tclass=\"sidebar-nav-mini-hide\">报表</span></a>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<li><a href=\"page_ready_blank.html\">订单统计报表</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"page_ready_blank.html\">地区统计报表</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"page_ready_blank.html\">商品销售报表</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"page_ready_blank.html\">客户订货报表</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"page_ready_blank.html\">销售毛利统计报表</a></li>\r\n");
      out.write("\t\t\t</ul></li>\r\n");
      out.write("\r\n");
      out.write("\t\t<!--结束-->\r\n");
      out.write("\t</ul>\r\n");
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
