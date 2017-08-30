<%-- 
    Document   : RegistroTurno
    Created on : 19-ago-2017, 9:26:59
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
         
            <form id="RegistroTurno" name="RegistroTurno" class="formRegistro" method="post" action="Turno/create"  >
                <h2 class="titulo-Form">Registro de Turno</h2>
         
             <div id="contenedorInputs"> 
                 
         <input name="Usuario" placeholder="Usuario" class="input-50" type="text" required>
         
                    <label class="Jornada">Jornada</label>
                  <select name="Jornada" id="Jornada">
                <option value=null>Seleccione</option>  
                <option  value="Carro">Mañana</option>     
                <option  value="Moto">Tarde</option>     
                <option  value="Cicla">Noche</option>     
            </select>
             
                    <input name="HoraIngreso" placeholder="HoraIngreso" class="input-50" type="time" required>
                    <input name="HoraSalida" placeholder="HoraSalida" class="input-50" type="time" required>
             
            
              
            
           
            
            <input class="btnRegistrar" id="btnRegistro" type="submit" value="Registrar" >
            <input class="btnCancelar" id="btnCancelar" type="reset" value="Cancelar" >
            <p class="form-link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa aqui</a></p>
            
            
             </div>
            
        </form> 
    </body>
</html>
