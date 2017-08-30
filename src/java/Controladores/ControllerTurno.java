/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Cliente;
import Modelos.HibernateUtil;
import Modelos.Ticket;
import Modelos.Turno;
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
 * @author Milena
 */
public class ControllerTurno extends HttpServlet {
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
                    RegistrarTurno(request,response);
                    break;
               
                    
                default:System.out.println("Esta accion no existe");
                
            }
            
        }
        
        
    }
    private void RegistrarTurno(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try{
        response.setContentType("text/html;charset=UTF-8");
        Session sr = (Session)HibernateUtil.getSessionFactory().openSession();
     
        Turno tur = new Turno();
        
        String jornada= request.getParameter("Jornada");
        String horaIngreso= request.getParameter("HoraIngreso");
        String horaSalida= request.getParameter("HoraSalida");
     
         String Usuario=request.getParameter("Usuario");
        int idU= Integer.parseInt(Usuario);
        Usuario usuario= (Usuario) ss.get(Usuario.class, idU);
        
        
        tur.setJornada(jornada);
        tur.setHoraSalida(horaSalida);
        tur.setHoraIngreso(horaIngreso);
        tur.setUsuario(usuario);
        
        
         
        
       sr.beginTransaction();
       sr.save(tur);
        
        sr.getTransaction().commit();
        sr.close();
        
//        request.getRequestDispatcher("/pages/bloques/bloque.jsp").forward(request, response);
      
        
         }catch(HibernateException ex){
             System.out.println("Error"+ex);
         }
         
    }
    
    
      public static String ListarTabla(){

        Session sr = (Session)HibernateUtil.getSessionFactory().openSession();
         Query q=sr.createQuery("From Turno e");
         ArrayList<Turno> ListaTurno = (ArrayList<Turno>) q.list();
      
        
        String Result = "";
        Result += "        ";
        for (int i = 0; i < ListaTurno.size(); i++) {       
            Result +=     "  <tr>\n" ;
           Result +=  "                  <td>"+ListaTurno.get(i).getUsuario()+" </td>\n" +
            "                  <td>"+ListaTurno.get(i).getJornada()+"\n" +
    
            "                  </td>\n" +
            
            "                  <td>"+ListaTurno.get(i).getHoraIngreso()+"</td>\n" +
            "                  <td>"+ListaTurno.get(i).getHoraSalida()+"</td>\n" +
            
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
