<%-- 
    Document   : RegistroParqueo
    Created on : 19-ago-2017, 9:15:39
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
         
            <form id="RegistroVehiculo" name="RegistroParqueo" class="RegistroParqueo" method="post" action="Parqueo/create"  >
                <h2 class="titulo-Form">Registro de Parqueo</h2>
         
             <div id="contenedorInputs"> 
                 
               
        
                 <input name="FechaIngreso" placeholder="FechaIngreso" type="date" class="input-50" required>
        
                 <input name="FechaSalida" placeholder="FechaSalida" type="date" class="input-50" required>
        
                 <input name="HoraIngreso" placeholder="HoraIngreso" type="time" class="input-50" required>
            
                 <input name="HoraSalida" placeholder=HoraSalida type="time" class="input-50" required>
             
             <input name="Vehiculo" placeholder="Vehiculo" type="text" class="input-50" required>
         
             <input name="EspacioParqueo" placeholder="EspacioParqueo" class="input-50" type="text" required>
             
             <input name="Promociones" placeholder="Promociones" class="input-50" type="text" required>
             
            
              
            
           
            
            <input class="btnRegistrar" id="btnRegistro" type="submit" value="Registrar" >
            <input class="btnCancelar" id="btnCancelar" type="reset" value="Cancelar" >
            <p class="form-link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa aqui</a></p>
            
            
             </div>
            
        </form> 
    </body>
</html>
