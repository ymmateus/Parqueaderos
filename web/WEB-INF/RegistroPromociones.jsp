<%-- 
    Document   : RegistroPromociones
    Created on : 19-ago-2017, 9:31:10
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
         
            <form id="RegistroPromocion" name="RegistroPromocion" class="formRegistro" method="post" action="Promociones/create"  >
                <h2 class="titulo-Form">Registro de Promociones</h2>
         
             <div id="contenedorInputs"> 
                 
       
         
                    <label class="TipoPromocion">TipoPromocion</label>
                  <select name="TipoPromocion" id="TipoPromocion">
                <option value=null>Seleccione</option>  
                <option  value="Lavado">Lavado</option>     
                <option  value="Aspirado">Aspirado</option>     
                <option  value="Encerado">Encerado</option>     
            </select>
             
                    <input name="Nombre" placeholder="Nombre" class="input-50" type="time" required>
                    <input name="Descripcion" placeholder="Descripcion" class="input-50" type="time" required>
             
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
