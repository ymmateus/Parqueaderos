<%-- 
    Document   : RegistroEspacioParqueo
    Created on : 19-ago-2017, 9:20:34
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
         
            <form id="RegistroEspacioParqueo" name="RegistroEspacioParqueo" class="formRegistro" method="post" action="EspacioParqueo/create"  >
                <h2 class="titulo-Form">Registro de Espacio Parqueo</h2>
         
             <div id="contenedorInputs"> 
                 
               
        
            <input name="Numero" placeholder="Numero" type="text" class="input-50" required>
        
           
            
                    <label class="Parasol">Parasol</label>
                  <select name="Parasol" id="Parasol">
                <option value=null>Seleccione</option>  
                <option  value="Si">Si</option>     
                <option  value="No">No</option>     
                 
            </select>
                    
                        <label class="Estado">Estado</label>
                  <select name="Estado" id="Estado">
                <option value=null>Seleccione</option>  
                <option  value="Activo">Activo</option>     
                <option  value="Inactivo">Inactivo</option>     
                 
            </select>
             
           
             
            
              
            
           
            
            <input class="btnRegistrar" id="btnRegistro" type="submit" value="Registrar" >
            <input class="btnCancelar" id="btnCancelar" type="reset" value="Cancelar" >
            <p class="form-link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa aqui</a></p>
            
            
             </div>
            
        </form> 
    </body>
</html>
