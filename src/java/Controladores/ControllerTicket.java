/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Cliente;
import Modelos.HibernateUtil;
import Modelos.Parqueaderos;
import Modelos.Parqueo;
import Modelos.Servicio;
import Modelos.Serviciosticket;
import Modelos.Ticket;
import Modelos.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

/**
 *
 * @author AdsiAndroid
 */
public class ControllerTicket extends HttpServlet {
 public Session ss = (Session)HibernateUtil.getSessionFactory().openSession();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         response.setContentType("text/html;charset=UTF-8");
        
        String url=request.getRequestURI();
        String [] parametros= url.split("/");
        
        if (parametros.length>=3) {
            
            switch(parametros[3]){
            
                case "create":
                    RegistrarTicket(request,response);
                    break;
               
                 
                    
                default:System.out.println("Esta accion no existe");
                
            }
            
        }
        
        
    }

    
    private void RegistrarTicket(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try{
        response.setContentType("text/html;charset=UTF-8");
        Session sr = (Session)HibernateUtil.getSessionFactory().openSession();
     
        Ticket ticket = new Ticket();
        
        String fecha= request.getParameter("Fecha");
        String hora= request.getParameter("Hora");
        String valorTiempo= request.getParameter("ValorTiempo");
        String observaciones= request.getParameter("Observaciones");
        String puntos= request.getParameter("Puntos");
        String estado= request.getParameter("Estado");
        String precioTotal= request.getParameter("PrecioTotal");
     
        
        String Usuario=request.getParameter("Usuario");
        int idU= Integer.parseInt(Usuario);
        Usuario usuario= (Usuario) ss.get(Usuario.class, idU);
        
        String Parqueaderos=request.getParameter("Parqueaderos");
        int idP= Integer.parseInt(Parqueaderos);
        Parqueaderos parqueaderos= (Parqueaderos) ss.get(Parqueaderos.class, idP);
        
         String Parqueo=request.getParameter("Parqueo");
        int idPa= Integer.parseInt(Parqueo);
        Parqueo parqueo= (Parqueo) ss.get(Parqueo.class, idPa);
        
        String ServiciosTicket=request.getParameter("Servicioticket");
        int idS= Integer.parseInt(ServiciosTicket);
        Serviciosticket servicioT= (Serviciosticket) ss.get(Serviciosticket.class, idS);
        
        ticket.setFecha(fecha);
        ticket.setHora(hora);
        ticket.setValorTiempo(Long.parseLong(valorTiempo));
        ticket.setObservaciones(observaciones);
        ticket.setPuntos(Long.parseLong(puntos));
        ticket.setEstado(estado);
        ticket.setPrecioTotal(Long.parseLong(precioTotal));
        
        ticket.setUsuario(usuario);
        ticket.setParqueaderos(parqueaderos);
        ticket.setParqueo(parqueo);
        ticket.setServiciosticket(servicioT);
        
        
         
        
       sr.beginTransaction();
       sr.save(ticket);
        
        sr.getTransaction().commit();
        sr.close();
        
//        request.getRequestDispatcher("/pages/bloques/bloque.jsp").forward(request, response);
      
        
         }catch(HibernateException ex){
             System.out.println("Error"+ex);
         }
         
    }
    
          public static String ListarTabla(){

        Session sr = (Session)HibernateUtil.getSessionFactory().openSession();
         Query q=sr.createQuery("From Ticket e");
         ArrayList<Ticket> ListaTicket = (ArrayList<Ticket>) q.list();
      
        
        String Result = "";
        Result += "        ";
        for (int i = 0; i < ListaTicket.size(); i++) {       
            Result +=     "  <tr>\n" ;
           Result +=  "                  <td>"+ListaTicket.get(i).getFecha()+" </td>\n" +
            
    
            "                  </td>\n" +
            "                  <td>"+ListaTicket.get(i).getHora()+"</td>\n" +
            "                  <td>"+ListaTicket.get(i).getValorTiempo()+"</td>\n" +
            "                  <td>"+ListaTicket.get(i).getObservaciones()+"</td>\n" +
            "                  <td>"+ListaTicket.get(i).getPuntos()+"</td>\n" +
            "                  <td>"+ListaTicket.get(i).getEstado()+"</td>\n" +
            "                  <td>"+ListaTicket.get(i).getUsuario()+"</td>\n" +
            "                  <td>"+ListaTicket.get(i).getParqueaderos()+"</td>\n" +
            "                  <td>"+ListaTicket.get(i).getParqueo()+"</td>\n" +
            "                  <td>"+ListaTicket.get(i).getServiciosticket()+"</td>\n" +
            "                  <td>"+ListaTicket.get(i).getPrecioTotal()+"</td>\n" +
            
            "                </tr>";
        }
        return Result;
    }
    
    
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
