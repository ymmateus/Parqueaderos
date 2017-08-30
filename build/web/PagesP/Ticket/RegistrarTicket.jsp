<%-- 
    Document   : RegistrarTicket
    Created on : 23/08/2017, 09:22:13 PM
    Author     : AdsiAndroid
--%>


   <%@page import="Modelos.Serviciosticket"%>
<%@page import="Modelos.Servicio"%>
<%@page import="Modelos.Parqueo"%>
<%@page import="Modelos.Parqueaderos"%>
<%@page import="Modelos.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Modelos.HibernateUtil"%>
<%    Session ss = (Session)HibernateUtil.getSessionFactory().openSession();
  
   
        Query ListUsuario= ss.createQuery("From Usuario u");
        Query ListParqueaderos= ss.createQuery("From Parqueaderos e");
        Query ListParqueo= ss.createQuery("From Parqueo p");
        Query listServicios= ss.createQuery("From Serviciosticket s");
       
      
 
       
        
       ArrayList<Usuario> ListaUsuario = (ArrayList<Usuario>) ListUsuario.list();
       ArrayList<Parqueaderos> ListaParqueaderos = (ArrayList<Parqueaderos>) ListParqueaderos.list();
       ArrayList<Parqueo> ListaParqueo = (ArrayList<Parqueo>) ListParqueo.list();
       ArrayList<Serviciosticket>listaServicios = (ArrayList<Serviciosticket>) listServicios.list();
        
        
        
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="../Includes/Header.jsp" %>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ticket</title>
    </head>
    <body>
           <%@include file="../Includes/MaquetaAdmin.jsp" %>
        
   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Cliente
        <small>Informacion Ticket</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Ticket</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Ticket</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistrarTicket" name="RegistrarTicket" class="formRegistro" method="post" action="../../ControllerTicket/create"  >
              <div class="box-body">
                  
                
                  
                  
                <div class="form-group">
                  <label for="exampleInputEmail1">Fecha </label>
                  <input type="date" class="form-control" id="exampleInputEmail1" name="Fecha" placeholder="Seleccione Fecha">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Hora</label>
                  <input type="time" class="form-control" id="exampleInputEmail1" name="Hora" placeholder="Digite la hora">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Valor Tiempo</label>
                  <input type="number" name="ValorTiempo"  class="form-control" id="exampleInputEmail1"  placeholder="Ingrese el  valor por tiempo">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Observaciones</label>
                  <input type="text" name="Observaciones" class="form-control" id="exampleInputEmail1" placeholder="Ingrese sus observaciones">
                </div>
                
                <div class="form-group">
                  <label for="exampleInputEmail1">Puntos</label>
                  <input type="number" name="Puntos" class="form-control" id="exampleInputEmail1" placeholder="Ingrese cantidad de puntos">
                </div>
                
                    <div class="form-group">
                  <label>Estado</label>
                  <select class="form-control" name="Estado" id="Estado" >
                    <option value=null>Seleccione</option>  
                     <option  value="Generado">Generado</option>     
                     <option  value="Finalizado">Finalizado</option>     
                  </select>
                </div>
                   <div class="form-group">
                  <label for="exampleInputEmail1">Precio Total</label>
                  <input type="number" name="PrecioTotal" class="form-control" id="exampleInputEmail1" placeholder="Ingrese Precio Total">
                </div>
                  
                  <select id="Usuario" name="Usuario">
                    <option value=null>Seleccione su Usuario</option>    
                     <%

                    for(Usuario ep: ListaUsuario){%>
                    <option value="<% out.print(ep.getIdUsuario()); %>" > <%= ep.getNombre()+" "+ep.getApellido()%></option> 
                    <%        
                    }
                    %>
                </select>
                  
                <select id="Parqueaderos" name="Parqueaderos">
                    <option value=null>Seleccione el Parqueadero</option>    
                     <%

                    for(Parqueaderos ep: ListaParqueaderos){%>
                    <option value="<% out.print(ep.getIdParqueaderos()); %>" > <%= ep.getNombre()+" "+ep.getNit()%></option> 
                    <%        
                    }
                    %>
                </select>
                
                <select   id="Parqueo" name="Parqueo">
                    <option value=null>Seleccione su  sitio Parqueo</option>    
                     <%

                    for(Parqueo ep: ListaParqueo){%>
                    <option value="<% out.print(ep.getIdParqueo()); %>" > <%= ep.getFechaIngreso()+" "+ep.getHoraIngreso()%></option> 
                    <%        
                    }
                    %>
                </select>
                
                <select  id="Servicioticket" name="Servicioticket">
                    <option value=null>Seleccione su Servicio</option>    
                     <%

                    for(Serviciosticket ep: listaServicios){%>
                    <option value="<% out.print(ep.getIdServiciosTicket()); %>" > <%= ep.getEstado()+" "+ep.getValorServicio()%></option> 
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
