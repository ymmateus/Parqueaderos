package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class RegistrarCliente_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Hello World!</h1>\n");
      out.write("        \n");
      out.write("              <h1>Formulario de Registro</h1>\n");
      out.write("         \n");
      out.write("            <form id=\"RegistroUsuarios\" name=\"RegistroUsuarios\" class=\"formRegistro\" method=\"post\" action=\"Cliente/create\"  >\n");
      out.write("                <h2 class=\"titulo-Form\">Registro de Usuarios</h2>\n");
      out.write("         \n");
      out.write("             <div id=\"contenedorInputs\"> \n");
      out.write("                 \n");
      out.write("                  <label class=\"estado\">TDocumento</label>\n");
      out.write("                  <select name=\"Tipo\" id=\"Tipo\">\n");
      out.write("                <option value=null>Seleccione</option>  \n");
      out.write("                <option  value=\"Cedula\">Cedula</option>     \n");
      out.write("                <option  value=\"Inactivo\">Inactivo</option>     \n");
      out.write("            </select>\n");
      out.write("        \n");
      out.write("            <input name=\"Documento\" placeholder=\"Nombres Completos\" type=\"text\" class=\"input-50\" required>\n");
      out.write("        \n");
      out.write("            <input name=\"Nombre\" placeholder=\"Apellidos Completos\" type=\"text\" class=\"input-50\" required>\n");
      out.write("        \n");
      out.write("            <input name=\"Apellido\" placeholder=\"Ciudad de Nacimiento\" type=\"text\" class=\"input-50\" required>\n");
      out.write("        \n");
      out.write("            <input name=\"Telefono\" placeholder=\"Direccion de residencia\" class=\"input-50\" type=\"text\" required>\n");
      out.write("        \n");
      out.write("            <input name=\"Codigo\" placeholder=\"correo electronico\" type=\"text\" class=\"input-100\" required>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("            \n");
      out.write("            <input class=\"btnRegistrar\" id=\"btnRegistro\" type=\"submit\" value=\"Registrar\" >\n");
      out.write("            <input class=\"btnCancelar\" id=\"btnCancelar\" type=\"reset\" value=\"Cancelar\" >\n");
      out.write("            <p class=\"form-link\">¿Ya tienes una cuenta? <a href=\"Login.jsp\">Ingresa aqui</a></p>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("             </div>\n");
      out.write("            \n");
      out.write("        </form> \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
