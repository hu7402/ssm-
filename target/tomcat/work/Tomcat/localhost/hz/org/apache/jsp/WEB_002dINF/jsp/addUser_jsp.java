/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-01-26 07:16:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addUser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


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

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>办公自动化管理系统</title>\r\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/style.css\"\r\n");
      out.write("\trel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery-1.8.3.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery.validate.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("\tsrc=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/messages_zh.js\"></script>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("label {\r\n");
      out.write("\tclear: left;\r\n");
      out.write("\tcolor: red;\r\n");
      out.write("\tmargin-top: 13px;\r\n");
      out.write("\twidth: 60px;\r\n");
      out.write("\tfont: 600 10px 宋体;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "top.jsp", out, false);
      out.write("\r\n");
      out.write("\t<form id=\"userAddForm\" name=\"userAddForm\" action=\"saveAddUser\">\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"u.id\" value=\"26\" /> <input type=\"hidden\"\r\n");
      out.write("\t\t\tname=\"u.sex\" value=\"2\" id=\"u_sex\" /> <input type=\"hidden\"\r\n");
      out.write("\t\t\tname=\"u.supper\" value=\"0\" id=\"u_supper\" />\r\n");
      out.write("\t\t<div class=\"main\">\r\n");
      out.write("\t\t\t<div class=\"global-width\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("\t\t\t\t<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>办公自动化管理系统</title>\r\n");
      out.write("<link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/style.css\"\r\n");
      out.write("\trel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"nav\" id=\"nav\">\r\n");
      out.write("\t\t<div class=\"t\"></div>\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "left.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("</body>\r\n");
      out.write("\t\t\t\t</html>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"action\">\r\n");
      out.write("\t\t\t\t\t<div class=\"t\">添加账号</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"pages\">\r\n");
      out.write("\t\t\t\t\t\t<table width=\"90%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"right\" width=\"30%\">姓名：</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"left\"><input type=\"text\" id=\"username\" name=\"username\" /><span\r\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"color: red;\">*</span><span id=\"span1\" style=\"color: red;\"></span></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"right\" width=\"30%\">密码：</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"left\"><input type=\"password\" name=\"password\" /><span\r\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"color: red;\">*</span></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"right\" width=\"30%\">昵称：</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"left\"><input type=\"text\" name=\"nickname\" /><span\r\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"color: red;\">*</span></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"right\" width=\"30%\">年龄：</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"left\"><input type=\"text\" name=\"age\" /></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"right\" width=\"30%\">性别：</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"left\"><select name=\"sex\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"1\">男\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<option value=\"0\">女\r\n");
      out.write("\t\t\t\t\t\t\t\t</select></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"right\" width=\"30%\">手机：</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"left\"><input type=\"text\" name=\"mobile\" /><span\r\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"color: red;\">*</span></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"right\" width=\"30%\">地址：</td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"left\"><input type=\"text\" name=\"address\" /></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td align=\"center\" colspan=\"2\"><input type=\"submit\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tvalue=\"保存数据\" /> <input type=\"button\" value=\"返回\"\r\n");
      out.write("\t\t\t\t\t\t\t\t\tonclick=\"javascript:history.back()\" /></td>\r\n");
      out.write("\t\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</form>\r\n");
      out.write("\t<div class=\"copyright\">Copyright &nbsp; &copy; &nbsp;</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\t\r\n");
      out.write("\t//表单校验\r\n");
      out.write("\t$(function() {\r\n");
      out.write("\t\t$(\"#userAddForm\").validate({\r\n");
      out.write("\t\t\trules : {\r\n");
      out.write("\t\t\t\tusername : \"required\",\r\n");
      out.write("\t\t\t\tpassword : \"required\",\r\n");
      out.write("\t\t\t\tnickname : \"昵称不能为空\",\r\n");
      out.write("\t\t\t\tmobile : {\r\n");
      out.write("\t\t\t\t\trequired : true,\r\n");
      out.write("\t\t\t\t\tdigits : true,\r\n");
      out.write("\t\t\t\t\tminlength : 11,\r\n");
      out.write("\t\t\t\t\tmaxlength : 11\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t},\r\n");
      out.write("\t\t\tmessages : {\r\n");
      out.write("\t\t\t\tusername : \"姓名不能为空\",\r\n");
      out.write("\t\t\t\tpassword : \"密码不能为空\",\r\n");
      out.write("\t\t\t\tnickname : \"昵称不能为空\",\r\n");
      out.write("\t\t\t\tmobile : {\r\n");
      out.write("\t\t\t\t\trequired : \"手机号不能为空\",\r\n");
      out.write("\t\t\t\t\tdigits : \"请输入正确的手机号\",\r\n");
      out.write("\t\t\t\t\tminlength : \"请输入正确的手机号\",\r\n");
      out.write("\t\t\t\t\tmaxlength : \"请输入正确的手机号\",\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t$(function(){\r\n");
      out.write("\t\t$(\"#username\").blur(\r\n");
      out.write("\t\t\tfunction(){\r\n");
      out.write("\t\t\t\t$.get(\r\n");
      out.write("\t\t\t\t\t\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/user/checkUser\",\r\n");
      out.write("\t\t\t\t\t{\"username\":this.value},\r\n");
      out.write("\t\t\t\t\tfunction(data){\r\n");
      out.write("\t\t\t\t\t\tif(data!=null){\r\n");
      out.write("\t\t\t\t\t\t\tvar val = data.username;\r\n");
      out.write("\t\t\t\t\t\t\t$(\"#span1\").html(\"用户名已被注册\");\r\n");
      out.write("\t\t\t\t\t\t}else{\r\n");
      out.write("\t\t\t\t\t\t\t$(\"#span1\").html(\"用户名可以使用\");\r\n");
      out.write("\t\t\t\t\t\t}\t\r\n");
      out.write("\t\t\t\t\t},\r\n");
      out.write("\t\t\t\t\t\"json\"\r\n");
      out.write("\t\t\t\t);\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}\t\t\r\n");
      out.write("\t\t);\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\r\n");
      out.write("\t});\r\n");
      out.write("\t})\r\n");
      out.write("\r\n");
      out.write("</script>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
