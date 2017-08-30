<%-- 
    Document   : RegistrarTurno
    Created on : 25/08/2017, 06:57:59 PM
    Author     : AdsiAndroid
--%>

<%@page import="Modelos.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Modelos.HibernateUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%    Session ss = (Session)HibernateUtil.getSessionFactory().openSession();
  
        Query listUsuario= ss.createQuery("From Usuario e");
        
  
        ArrayList<Usuario> ListaUsuario= new ArrayList<>();
        
        
        
        ListaUsuario = (ArrayList<Usuario>) listUsuario.list();
       
        
        
%>
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
        <small>Turno</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Turno</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Turno</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistrarTurno" name="RegistrarTurno" class="formRegistro" method="post" action="../../ControllerTurno/create"  >
              <div class="box-body">
                  
                  
                  
                  <div class="form-group">
                  <label>Jornada</label>
                  <select class="form-control" name="Jornada" id="Jornada" >
                    <option value=null>Seleccione</option>  
                     <option  value="Mañana">Mañana</option>     
                     <option  value="Tarde">Tarde</option>     
                     <option  value="Noche">Noche</option>     
                  </select>
                </div>
                  
                  
                <div class="form-group">
                  <label for="exampleInputEmail1">HoraIngreso</label>
                  <input type="time" class="form-control" id="exampleInputEmail1" name="HoraIngreso" placeholder="Ingrese la hora de ingreso">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">HoraSalida</label>
                  <input type="time" class="form-control" id="exampleInputEmail1" name="HoraSalida" placeholder="Ingrese la hora de salida">
                </div>
               
                  
                  <select  id="Usuario" name="Usuario">
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