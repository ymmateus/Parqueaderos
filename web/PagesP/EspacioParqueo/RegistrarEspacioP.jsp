<%-- 
    Document   : RegistrarEspacioP
    Created on : 26-ago-2017, 11:02:43
    Author     : Equipo13
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../Includes/Header.jsp" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EspacioParqueo</title>
    </head>
    <body>
           <%@include file="../Includes/MaquetaAdmin.jsp" %>
        
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        
        <small>Espacio Parqueo</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> EspacioParqueo</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar EspacioParqueo</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistroEspacioP" name="RegistroEspacioP" class="formRegistro" method="post" action="../../ControllerEspacioParqueo/create"  >
              <div class="box-body">
                  
                  <div class="form-group">
                  <label for="exampleInputEmail1">Numero</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" name="Numero" placeholder=" Digite numero de parqueadero">
                </div>
                  
                  <div class="form-group">
                  <label>Tipo </label>
                  <select class="form-control" name="Tipo" id="Tipo" >
                    <option value=null>Seleccione</option>  
                     <option  value="Carro">Carro</option>     
                     <option  value="Moto">Moto</option>     
                     <option  value="Cicla">Cicla</option>     
                  </select>
                </div>
                  
                <div class="form-group">
                  <label>Estado</label>
                  <select class="form-control" name="Tipo" id="Tipo" >
                    <option value=null>Seleccione</option>  
                     <option  value="Activo">Activo</option>     
                     <option  value="Inactivo">Inactivo</option>     
                        
                  </select>
                </div>
                  
               
                   <div class="form-group">
                  <label>Parasol</label>
                  <select class="form-control" name="Tipo" id="Tipo" >
                    <option value=null>Seleccione</option>  
                     <option  value="Si">Si</option>     
                     <option  value="No">No</option>     
                     
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
