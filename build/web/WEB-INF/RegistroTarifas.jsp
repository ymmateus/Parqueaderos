<%-- 
    Document   : RegistroTarifas
    Created on : 19-ago-2017, 9:46:16
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
         
            <form id="RegistroTarifas" name="RegistroTarifas" class="formRegistro" method="post" action="Tarifas/create"  >
                <h2 class="titulo-Form">Registro de Tarifas</h2>
         
             <div id="contenedorInputs"> 
                 
         
                    <label class="Jornada">Jornada</label>
                  <select name="Jornada" id="Jornada">
                <option value=null>Seleccione</option>  
                <option  value="Diurna">Diurna</option>     
                <option  value="Nocturna">Nocturna</option>     
              
            </select>
                    
           <input name="ValorMinuto" placeholder="ValorMinuto" class="input-50" type="text" required>
                  <label class="TipoVehiculo">TipoVehiculo</label>
                  <select name="TipoVehiculo" id="TipoVehiculo">
                <option value=null>Seleccione</option>  
                <option  value="Carro">Carro</option>     
                <option  value="Moto">Moto</option>     
                <option  value="Cicla">Cicla</option>     
              
            </select>
                    
           
           <input name="Prqueaderos" placeholder="Prqueaderos" class="input-50" type="text" required>

       
            <input class="btnRegistrar" id="btnRegistro" type="submit" value="Registrar" >
            <input class="btnCancelar" id="btnCancelar" type="reset" value="Cancelar" >
            <p class="form-link">¿Ya tienes una cuenta? <a href="Login.jsp">Ingresa aqui</a></p>
            
            
             </div>
            
        </form> 
    </body>
</html>
