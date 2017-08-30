<%-- 
    Document   : RegistroServiciosT
    Created on : 23/08/2017, 03:21:21 PM
    Author     : Milena
--%>

<%@page import="Modelos.Usuario"%>
<%@page import="Modelos.Servicio"%>
<%@page import="Modelos.Promociones"%>
<%@page import="Modelos.Vehiculo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Modelos.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



        <%    Session ss = (Session)HibernateUtil.getSessionFactory().openSession();
  
        Query listVehiculo= ss.createQuery("From Vehiculo u");
        Query ListPromociones= ss.createQuery("From Promociones u");
        Query listServicios= ss.createQuery("From Servicio u");
        Query ListUsuario= ss.createQuery("From Usuario u");
      
  
    
        
        
     ArrayList<Vehiculo>   ListaVehiculo = (ArrayList<Vehiculo>) listVehiculo.list();
     ArrayList<Promociones>   ListaPromociones = (ArrayList<Promociones>) ListPromociones.list();
      ArrayList<Servicio>  ListaServicios = (ArrayList<Servicio>) listServicios.list();
     ArrayList<Usuario>   ListaUsuario = (ArrayList<Usuario>) ListUsuario.list();
        
        
%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../Includes/Header.jsp" %>
        

        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Servicios Ticket</title>
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
        <li><a href="#"><i class="fa fa-dashboard"></i>Servicios Ticket</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Servicios Ticket</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistroServicioT" name="RegistroServiciosT" class="formRegistro" method="post" action="../../ControllerServiciosTicket/create"  >
              <div class="box-body">
                  
                  <div class="form-group">
                  <label>Estado</label>
                  <select class="form-control" name="Tipo" id="Tipo" >
                    <option value=null>Seleccione</option>  
                     <option  value="Activo">Activo</option>     
                     <option  value="Inactivo">Inactivo</option>     
                       
                  </select>
                </div>
                  
                  <select id="Vehiculo" name="Vehiculo">
                    <option value=null>Seleccione el vehiculo</option>    
                     <%

                    for(Vehiculo ep: ListaVehiculo){%>
                    <option value="<% out.print(ep.getIdVehiculo()); %>" > <%= ep.getNombreVehiculo()+" "+ep.getPlacas()%></option> 
                    <%        
                    }
                    %>
                </select>
                
                <select  id="Promociones" name="Promociones">
                    <option value=null>Seleccione su promcion</option>    
                     <%

                    for(Promociones ep: ListaPromociones){%>
                    <option value="<% out.print(ep.getIdPromociones()); %>" > <%= ep.getTipoPromocion()+" "+ep.getNombre()%></option> 
                    <%        
                    }
                    %>
                </select>
                
                <select  id="Servicio" name="Servicio">
                    <option value=null>Seleccione su Servicio</option>    
                     <%

                    for(Servicio ep: ListaServicios){%>
                    <option value="<% out.print(ep.getIdServicio()); %>" > <%= ep.getTipo()+" "+ep.getValor()%></option> 
                    <%        
                    }
                    %>
                </select>
                
                <select   id="Usuario" name="Usuario">
                    <option value=null>Seleccione el trabajador</option>    
                     <%

                    for(Usuario ep: ListaUsuario){%>
                    <option value="<% out.print(ep.getIdUsuario()); %>" > <%= ep.getNombre()+" "+ep.getApellido()%></option> 
                    <%        
                    }
                    %>
                </select>

             
                <div class="form-group">
                  <label for="exampleInputEmail1">Valor</label>
                  <input type="number" name="ValorServicio" class="form-control" id="exampleInputEmail1" placeholder="Ingresar el valor">
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

