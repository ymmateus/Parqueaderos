<%-- 
    Document   : RegistrarParqueo
    Created on : 23/08/2017, 09:55:04 PM
    Author     : AdsiAndroid
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
        <small>Parqueo</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Parqueo</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Parqueo</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistrarParqueo" name="RegistrarParqueo" class="formRegistro" method="post" action="../../ControllerParqueo/create"  >
              <div class="box-body">
                  
                
                  
                  
                <div class="form-group">
                  <label for="exampleInputEmail1">Fecha Ingreso</label>
                  <input type="date" class="form-control" id="exampleInputEmail1" name="FechaIngreso" placeholder="seleccione la fecha ingreso">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Fecha Salida</label>
                  <input type="date" class="form-control" id="exampleInputEmail1" name="FechaSalida" placeholder="seleccione la fecha Salida">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Hora Ingreso</label>
                  <input type="number" name="HoraIngreso"  class="form-control" id="exampleInputEmail1"  placeholder="Ingrese la hora del ingreso">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Hora Salida</label>
                  <input type="number" name="HoraSalida" class="form-control" id="exampleInputEmail1" placeholder="Ingrese la hora de salida">
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
          <!-- Custom tabs (Charts with tabs)-->
       
          <!-- /.nav-tabs-custom -->

          <!-- Chat box -->
         
          <!-- /.box (chat box) -->

          <!-- TO DO List -->
        
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

