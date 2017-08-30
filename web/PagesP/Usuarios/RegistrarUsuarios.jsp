<%-- 
    Document   : Cliente
    Created on : 22/08/2017, 05:36:30 PM
    Author     : turbo core
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../Includes/Header.jsp" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <%@include file="../Includes/MaquetaAdmin.jsp" %>
        
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Cliente
        <small>Datos Personales del Usuario</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Usuario</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Usuario</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistroUsuarios" name="RegistroUsuarios" class="formRegistro" method="post" action="../../ControllerUsuario/create"  >
              <div class="box-body">
                  
                  <div class="form-group">
                  <label>Tipo de Documento</label>
                  <select class="form-control" name="TipoDocumento" id="TipoDocumento" >
                    <option value=null>Seleccione</option>  
                     <option  value="Cedula">Cedula</option>     
                     <option  value="Tarjeta">Tarjeta</option>     
                     <option  value="CedulaExtranjera">Cedula Extranjera</option>     
                  </select>
                </div>
                  
                  
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Documento</label>
                  <input type="number" name="Documento"  class="form-control" id="exampleInputEmail1"  placeholder="Ingrese el Documento">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Nombres Completos</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="Nombre" placeholder="Nombres Completos">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Apellidos Completos</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="Apellido" placeholder="Apellidos Completos">
                </div>
                  <div class="form-group">
                  <label for="exampleInputEmail1">Fecha Nacimiento</label>
                  <input type="date" class="form-control" id="exampleInputEmail1" name="FechaNacimiento" placeholder="seleccione fecha nacimiento">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Email</label>
                  <input type="email" class="form-control" id="exampleInputEmail1" name="Email" placeholder="Digite su email ">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Celular</label>
                  <input type="number" name="Celular" class="form-control" id="exampleInputEmail1" placeholder="Ingrese el Celular">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Direccion</label>
                  <input type="text" name="Direccion" class="form-control" id="exampleInputEmail1" placeholder="Ingrese su direccion">
                </div>
                  <div class="form-group">
                  <label>Estado</label>
                  <select class="form-control" name="Estado" id="Estado" >
                    <option value=null>Seleccione</option>  
                     <option  value="Activo">Activo</option>     
                     <option  value="Inactivo">Inactivo</option>     
                        
                  </select>
                </div>
                  <div class="form-group">
                  <label>Tipo</label>
                  <select class="form-control" name="Tipo" id="Tipo" >
                    <option value=null>Seleccione</option>  
                     <option  value="Administrador">Administrador</option>     
                     <option  value="Empleado">Empleado</option>     
                        
                  </select>
                </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Registrar</button>
              </div>
            </form>
          </div>
          
       
      </div>
      <!-- /.row -->
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <section class="col-lg-7 connectedSortable">
          <!-- Custom tabs (Char
        
          <!-- /.box -->

          <!-- quick email widget -->
          

        </section>
        <!-- /.Left col -->
        <!-- right col (We are only adding the ID to make the widgets sortable)-->
        <section class="col-lg-5 connectedSortable">


            
            
        </section>
        <!-- right col -->
      </div>
      <!-- /.row (main row) -->

    </section>
    <!-- /.content -->
  </div>
    
        
         
         <%@include file="../Includes/Footer.jsp" %>
    </body>
</html>
