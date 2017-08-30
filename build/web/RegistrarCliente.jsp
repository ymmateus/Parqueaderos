<%-- 
    Document   : RegistrarCliente
    Created on : 18/08/2017, 01:32:24 PM
    Author     : turbo core
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
              <h1>Formulario de Registro</h1>
         
            <form id="RegistroUsuarios" name="RegistroUsuarios" class="formRegistro" method="post" action="Cliente/create"  >
                <h2 class="titulo-Form">Registro de Usuarios</h2>
         
             <div id="contenedorInputs"> 
                 
                  <label class="estado">TDocumento</label>
                  <select name="Tipo" id="Tipo">
                <option value=null>Seleccione</option>  
                <option  value="Cedula">Cedula</option>     
                <option  value="Inactivo">Inactivo</option>     
            </select>
        
            <input name="Documento" placeholder="Nombres Completos" type="text" class="input-50" required>
        
            <input name="Nombre" placeholder="Apellidos Completos" type="text" class="input-50" required>
        
            <input name="Apellido" placeholder="Ciudad de Nacimiento" type="text" class="input-50" required>
        
            <input name="Telefono" placeholder="Direccion de residencia" class="input-50" type="text" required>
        
            <input name="Codigo" placeholder="correo electronico" type="text" class="input-100" required>
            
           
            
            <input class="btnRegistrar" id="btnRegistro" type="submit" value="Registrar" >
            <input class="btnCancelar" id="btnCancelar" type="reset" value="Cancelar" >
            <p class="form-link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa aqui</a></p>
            
            
             </div>
            
        </form> 
              
              
              
            <%@include file="Footer.jsp" %>
    </body>
</html>
