<%-- 
    Document   : RegistrarParqueaderos
    Created on : 24/08/2017, 02:05:58 PM
    Author     : Milena
--%>
 <%@page import="java.util.ArrayList"%>
<%@page import="Modelos.Usuario"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Modelos.HibernateUtil"%>
<%    Session ss = (Session)HibernateUtil.getSessionFactory().openSession();
  
        Query listUsuario= ss.createQuery("From Usuario e");
        
  
        ArrayList<Usuario> ListaUsuario= new ArrayList<>();
        
        
        
        ListaUsuario = (ArrayList<Usuario>) listUsuario.list();
       
        
        
%>
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
        <small>Parqueaderos</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Parqueaderos</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Parqueaderos</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistrarParqueaderos" name="RegistrarParqueaderos" class="formRegistro" method="post" action="../../ControllerParqueaderos/create"  >
              <div class="box-body">
                  
                 
                  
                  
                <div class="form-group">
                  <label for="exampleInputEmail1">Nombre</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="Nombre" placeholder="Nombres Parqueadero">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Nit</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="Nit" placeholder=" Digite Nit">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Direccion</label>
                  <input type="text" name="Direccion"  class="form-control" id="exampleInputEmail1"  placeholder="Ingrese su Direccion">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Telefono</label>
                  <input type="number" name="Telefono" class="form-control" id="exampleInputEmail1" placeholder="Ingrese el telefono">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">NumeroDian</label>
                  <input type="number" name="NumeroDian" class="form-control" id="exampleInputEmail1" placeholder="Ingrese NumeroDian">
                </div>
                
                  
                   <select  name="Usuario">
                    <option value=null>Seleccione su Usuario</option>    
                     <%

                    for(Usuario ep: ListaUsuario){%>
                    <option value="<% out.print(ep.getIdUsuario()); %>" > <%= ep.getNombre()+" "+ep.getDocumento()%></option> 
                    <%        
                    }
                    %>
                </select>
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

