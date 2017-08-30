<%-- 
    Document   : Cliente
    Created on : 22/08/2017, 05:36:30 PM
    Author     : turbo core
--%>

 <%@page import="Modelos.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Modelos.HibernateUtil"%>
<%    Session ss = (Session)HibernateUtil.getSessionFactory().openSession();
  
       
        Query ListCliente= ss.createQuery("From Cliente u");
      
  
    
        
        
        
         ArrayList<Cliente> ListaCliente = (ArrayList<Cliente>) ListCliente.list();
        
        
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
        <small>Datos Personales</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Vehiculo</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Vehiculo</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistroVehciulo" name="RegistroVehciulo" class="formRegistro" method="post" action="../../Vehiculo/create"  >
              <div class="box-body">
                  
                 
                  
                  
                <div class="form-group">
                  <label for="exampleInputEmail1">Nombre Vehiculo</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="NombreVehiculo" placeholder="Nombres Completos">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Placas</label>
                  <input type="text" class="form-control" id="exampleInputEmail1" name="Placas" placeholder="placas">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Ciudad</label>
                  <input type="text" name="Ciudad"  class="form-control" id="exampleInputEmail1"  placeholder="Ingrese Ciudad">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Marca</label>
                  <input type="text" name="Marca" class="form-control" id="exampleInputEmail1" placeholder="Ingrese Marca">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Color</label>
                  <input type="text" name="Color" class="form-control" id="exampleInputEmail1" placeholder="Ingrese el Color">
                </div>
                
                  <div class="form-group">
                  <label>Tipo Vehiculo</label>
                  <select class="form-control" name="Tipo" id="Tipo" >
                    <option value=null>Seleccione</option>  
                     <option  value="Carro">Carro</option>     
                     <option  value="Moto">Moto</option>     
                     <option  value="Cicla">Cicla</option>     
                        
                  </select>
                </div>
                  <select id="Cliente"  name="Cliente">
                    <option value=null>Seleccione el Cliente</option>    
                     <%

                    for(Cliente ep: ListaCliente){%>
                    <option value="<% out.print(ep.getIdCliente()); %>" > <%= ep.getNombre()+" "+ep.getApellido()%></option> 
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
