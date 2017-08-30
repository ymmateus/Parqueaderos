<%-- 
    Document   : RegistroTarifas
    Created on : 23/08/2017, 10:45:24 PM
    Author     : AdsiAndroid
--%>
 <%@page import="Modelos.Parqueaderos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="Modelos.HibernateUtil"%>
<%    Session ss = (Session)HibernateUtil.getSessionFactory().openSession();
  
        Query ListParqueaderos= ss.createQuery("From Parqueaderos e");
       
  
         ArrayList<Parqueaderos> ListaParqueaderos = (ArrayList<Parqueaderos>) ListParqueaderos.list();
       
        
        
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
        <small>Tarifas</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Tarifas</a></li>
        <li class="active">Registrar</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        
          
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Registrar Tarifas</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form id="RegistroTarifas" name="RegistroTarifas" class="formRegistro" method="post" action="../../ControllerTarifas/create"  >
              <div class="box-body">
                  
                  <div class="form-group">
                  <label>Jornada</label>
                  <select class="form-control" name="Jornada" id="Jornada" >
                    <option value=null>Seleccione</option>  
                     <option  value="Diurna">Diurna</option>     
                     <option  value="Nocturna">Nocturna</option>     
                  </select>
                </div>
                  
                  
                <div class="form-group">
                  <label for="exampleInputEmail1">Valor Por Minuto</label>
                  <input type="number" class="form-control" id="exampleInputEmail1" name="ValorMinuto" placeholder="Digite valor por minuto">
                </div>
                <div class="form-group">
                  <label>Tipo Vehiculo</label>
                  <select class="form-control" name="TipoVehiculo" id="TipoVehiculo" >
                    <option value=null>Seleccione</option>  
                     <option  value="Carro">Carro</option>     
                     <option  value="Moto">Moto</option>     
                     <option  value="Cicla">Cicla</option>     
                  </select>
                </div>
                  
                   <select  id="Parqueaderos" name="Parqueaderos">
                    <option value=null>Seleccione el Prqueadero</option>    
                     <%

                    for(Parqueaderos ep: ListaParqueaderos){%>
                    <option value="<% out.print(ep.getIdParqueaderos()); %>" > <%= ep.getNombre()+" "+ep.getNit()%></option> 
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
>
