<%-- 
    Document   : RegistroServicio
    Created on : 23/08/2017, 03:13:00 PM
    Author     : Milena
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../Includes/Header.jsp" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servicios</title>
    </head>
    <body>
           <%@include file="../Includes/MaquetaAdmin.jsp" %>
        
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Cliente
        <small>Servicios</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Servicios</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Servicios</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistroServicio" name="RegistroServicio" class="formRegistro" method="post" action="../../ControllerServicios/create"  >
              <div class="box-body">
                  
                  <div class="form-group">
                  <label>Tipo</label>
                  <select class="form-control" name="Tipo" id="Tipo" >
                    <option value=null>Seleccione</option>  
                     <option  value="Labado">Labado</option>     
                     <option  value="Aspirado">Aspirado</option>     
                     <option  value="Encerado">Encerado</option>     
                  </select>
                </div>
             
                <div class="form-group">
                  <label for="exampleInputEmail1">Valor</label>
                  <input type="number" name="Valor" class="form-control" id="exampleInputEmail1" placeholder="Ingresar el valor">
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
