package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.File;
import java.lang.String;
import foxy_server_manager.*;
import java.util.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
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
      response.setContentType("application/json;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

  session = request.getSession();
  if(session.getAttribute("user") != null){
      response.sendRedirect("index.jsp");
  }
  else{

        Scanner in = new Scanner(request.getInputStream());
        Database db = new Database();
        db.connect();
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("pswd");
        String cpassword = request.getParameter("cpswd");
        if(!password.equals(cpassword)){
              session.setAttribute("regvar", "password does not match with confirm password!");
              return;
        }
      //  String name = in.nextLine();
        int r = db.registerUser(name, email, password);
        out.println("name:"+name);
        out.println("email:"+email);
        out.println("password:"+password);
        if(r == 1){
              String filePath = ServerFiles.upload_folder+name+"\\A\\";
              File temp = new File(filePath);
              if(!temp.exists()){
                  temp.mkdirs();
              }
              filePath = ServerFiles.upload_folder+name+"\\B\\";
              temp = new File(filePath);
              if(!temp.exists()){
                  temp.mkdirs();
              }
              filePath = ServerFiles.upload_folder+name+"\\C\\";
              temp = new File(filePath);
              if(!temp.exists()){
                  temp.mkdirs();
              }
//              out.println("registered Successfully"); 
              session.setAttribute("regvar", "registered");
        }
        else {
//            out.println("ID not Available");
            session.setAttribute("regvar","ID not Available");
        }
}       

response.sendRedirect("signup.jsp");


      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
