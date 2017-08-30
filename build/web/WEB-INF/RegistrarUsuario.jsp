<%-- 
    Document   : RegistrarUsuario
    Created on : 18-ago-2017, 22:24:36
    Author     : AdsiAndroid
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
         
            <form id="RegistroUsuarios" name="RegistroUsuarios" class="formRegistro" method="post" action="Usuario/create"  >
                <h2 class="titulo-Form">Registro de Usuarios</h2>
         
             <div id="contenedorInputs"> 
                 
                  <label class="TipoDocumento">TDocumento</label>
                  <select name="Tipo" id="Tipo">
                <option value=null>Seleccione</option>  
                <option  value="Cedula">Cedula</option>     
                <option  value="Targeta">Tarjeta</option>     
                <option  value="CedulaExtranjera">CedulaExtranjera</option>     
            </select>
                  
           
        
            <input name="Documento" placeholder="Documento" type="text" class="input-50" required>
        
            <input name="Nombre" placeholder="Nombres" type="text" class="input-50" required>
        
            <input name="Apellido" placeholder="Apellidos" type="text" class="input-50" required>
            
          
            
            
        
            <input name="Celular" placeholder="Celular" class="input-50" type="text" required>
            
            <input name="Direccion" placeholder="Direccion" class="input-50" type="text" required>
            
             <label class="Estado">Estado</label>
                  <select name="Tipo" id="Tipo">
                <option value=null>Seleccione</option>  
                <option  value="Activo">Activo</option>     
                <option  value="Inactivo">Inactivo</option>  
                
                     
            </select>
              <label class="TipoR">TipoR</label>
                  <select name="Tipo" id="Tipo">
                <option value=null>Seleccione</option>  
                <option  value="Administrador">Administrador</option>     
                <option  value="Empleado">Empleado</option>     
                <option  value="Cliente">Cliente</option>     
            </select>
            
           
        
          
            
           
            
            <input class="btnRegistrar" id="btnRegistro" type="submit" value="Registrar" >
            <input class="btnCancelar" id="btnCancelar" type="reset" value="Cancelar" >
            <p class="form-link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa aqui</a></p>
            
            
             </div>
            
        </form> 
    </body>
</html>
