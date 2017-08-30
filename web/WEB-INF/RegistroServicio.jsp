<%-- 
    Document   : RegistroServicio
    Created on : 19-ago-2017, 9:10:23
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
         
            <form id="RegistroServicio" name="RegistroServicio" class="formRegistro" method="post" action="Servicio/create"  >
                <h2 class="titulo-Form">Registro de Servicio</h2>
         
             <div id="contenedorInputs"> 
                 
       
                    <label class="Tipo">TipoServicio</label>
                  <select name="Tipo" id="Tipo">
                <option value=null>Seleccione</option>  
                <option  value="Carro">Lavado</option>     
                <option  value="Moto">Aspirado</option>     
                <option  value="Cicla">Enserado</option>     
            </select>
             
                    <input name="Valor" placeholder="Valor" class="input-50" type="text" required>
             
            
              
            
           
            
            <input class="btnRegistrar" id="btnRegistro" type="submit" value="Registrar" >
            <input class="btnCancelar" id="btnCancelar" type="reset" value="Cancelar" >
            <p class="form-link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa aqui</a></p>
            
            
             </div>
            
        </form> 
    </body>
</html>
