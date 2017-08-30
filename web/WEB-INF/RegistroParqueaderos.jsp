<%-- 
    Document   : RegistroParqueaderos
    Created on : 19-ago-2017, 9:40:54
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
         
            <form id="RegistroParqueaderos" name="RegistroParqueaderos" class="formRegistro" method="post" action="Parqueaderos/create"  >
                <h2 class="titulo-Form">Registro de Turno</h2>
         
             <div id="contenedorInputs"> 
                 
         <input name="Nombre" placeholder="Nombre" class="input-50" type="text" required>
         <input name="Nit" placeholder="Nit" class="input-50" type="text" required>
         <input name="Direccion" placeholder="Direccion" class="input-50" type="text" required>
         <input name="Telefono" placeholder="Telefono" class="input-50" type="text" required>
         
        <input name="NumeroDian" placeholder="NumeroDian" class="input-50" type="time" required>
        <input name="Usuario" placeholder="Usuario" class="input-50" type="time" required>
             
       <input class="btnRegistrar" id="btnRegistro" type="submit" value="Registrar" >
            <input class="btnCancelar" id="btnCancelar" type="reset" value="Cancelar" >
            <p class="form-link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa aqui</a></p>
            
            
             </div>
            
        </form> 
    </body>
</html>
