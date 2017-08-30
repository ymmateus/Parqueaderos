<%-- 
    Document   : RegistroVehiculo
    Created on : 19-ago-2017, 9:03:32
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
         
            <form id="RegistroVehiculo" name="RegistroVehiculo" class="formRegistro" method="post" action="Vehiculo/create"  >
                <h2 class="titulo-Form">Registro de Vehiculo</h2>
         
             <div id="contenedorInputs"> 
                 
               
        
            <input name="NombreVehiculo" placeholder="NombreVehiculo" type="text" class="input-50" required>
        
            <input name="Placas" placeholder="Placas" type="text" class="input-50" required>
        
            <input name="Ciudad" placeholder="Ciudad" type="text" class="input-50" required>
            
            <input name="Marca" placeholder=Marca type="text" class="input-50" required>
             
             <input name="Color" placeholder="Color" type="text" class="input-50" required>
        
            
                    <label class="TipoVehiculo">TipoVehiculo</label>
                  <select name="Tipo" id="Tipo">
                <option value=null>Seleccione</option>  
                <option  value="Carro">Carro</option>     
                <option  value="Moto">Moto</option>     
                <option  value="Cicla">Cicla</option>     
            </select>
             
             <input name="Cliente" placeholder="Cliente" class="input-50" type="text" required>
             
            
              
            
           
            
            <input class="btnRegistrar" id="btnRegistro" type="submit" value="Registrar" >
            <input class="btnCancelar" id="btnCancelar" type="reset" value="Cancelar" >
            <p class="form-link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa aqui</a></p>
            
            
             </div>
            
        </form> 
    </body>
</html>
