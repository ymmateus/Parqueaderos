<%-- 
    Document   : RegistrarPromociones
    Created on : 23/08/2017, 09:41:02 PM
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
        <small>Promociones</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Promociones</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Promociones</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistrarPromociones" name="RegistrarPromociones" class="formRegistro" method="post" action="../../ControllerPromocion/create"  >
              <div class="box-body">
                  
                  <div class="form-group">
                  <label>Tipo de Promocion</label>
                  <select class="form-control" name="TipoPromocion" id="Tipo" >
                    <option value=null>Seleccione</option>  
                     <option  value="lavado">lavado</option>     
                     <option  value="Aspirado">Aspirado</option>     
                     <option  value="Encerado">Encerado</option>     
                  </select>
                </div>
                  
                  
                <div class="form-group">
                  <label for="exampleInputEmail1">Nombre</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="Nombre" placeholder="Nombre de la promocion">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Descripcion</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="Descripcion" placeholder="Descripcion Completa">
                </div>
                <div class="form-group">
                  <label>Estado</label>
                  <select class="form-control" name="Tipo" id="Tipo" >
                    <option value=null>Seleccione</option>  
                     <option  value="Activo">Activo</option>     
                     <option  value="Inactivo">Inactivo</option>     
                    
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

