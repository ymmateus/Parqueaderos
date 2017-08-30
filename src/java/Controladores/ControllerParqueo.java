/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Cliente;
import Modelos.HibernateUtil;
import Modelos.Parqueo;
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
public class ControllerParqueo extends HttpServlet {
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
                    RegistrarParqueo(request,response);
                    break;
               
                    
                default:System.out.println("Esta accion no existe");
                
            }
            
        }
        
        
    }
    private void RegistrarParqueo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try{
        response.setContentType("text/html;charset=UTF-8");
        
     
        Parqueo par = new Parqueo();
        
        String fechaIngreso= request.getParameter("FechaIngreso");
        String fechaSalida= request.getParameter("FechaSalida");
        String horaIngreso= request.getParameter("HoraIngreso");
        String horaSalida= request.getParameter("HoraSalida");
        ;
        
        
        
        par.setFechaIngreso(fechaIngreso);
        par.setFechaSalida(fechaSalida);
        par.setHoraIngreso(horaIngreso);
        par.setHoraSalida(horaSalida);
        
        
         
        
       ss.beginTransaction();
       ss.save(par);
        
        ss.getTransaction().commit();
        ss.close();
        
//        request.getRequestDispatcher("/pages/bloques/bloque.jsp").forward(request, response);
      
        
         }catch(HibernateException ex){
             System.out.println("Error"+ex);
         }
         
    }
    
          public static String ListarTabla(){

        Session sr = (Session)HibernateUtil.getSessionFactory().openSession();
         Query q=sr.createQuery("From Parqueo e");
         ArrayList<Parqueo> ListaParqueos = (ArrayList<Parqueo>) q.list();
      
        
        String Result = "";
        Result += "        ";
        for (int i = 0; i < ListaParqueos.size(); i++) {       
            Result +=     "  <tr>\n" ;
           Result +=  "                  <td>"+ListaParqueos.get(i).getFechaIngreso()+" </td>\n" +
            
    
            "                  </td>\n" +
            "                  <td>"+ListaParqueos.get(i).getFechaSalida()+"</td>\n" +
            "                  <td>"+ListaParqueos.get(i).getHoraIngreso()+"</td>\n" +
            "                  <td>"+ListaParqueos.get(i).getHoraSalida()+"</td>\n" +
            "                  <td>"+ListaParqueos.get(i).getVehiculo()+"</td>\n" +
            "                  <td>"+ListaParqueos.get(i).getEspacioparqueo()+"</td>\n" +
            "                  <td>"+ListaParqueos.get(i).getPromociones()+"</td>\n" +
            
            
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
