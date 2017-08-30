/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Cliente;
import Modelos.HibernateUtil;
import Modelos.Vehiculo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Session;

/**
 *
 * @author turbo core
 */
public class ControllerVehiculo extends HttpServlet {
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
                    RegistrarVehiculo(request,response);
                    break;
                
                    
                default:System.out.println("Esta accion no existe");
                
            }
            
        }  
    }
    private void RegistrarVehiculo(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try{
        response.setContentType("text/html;charset=UTF-8");
        
     
        Vehiculo Ve = new Vehiculo();
    
        //Datos Vehiculo
        String NombreVehiculo= request.getParameter("NombreVehiculo");
        String Placas= request.getParameter("Placas");
        String Ciudad= request.getParameter("Ciudad");
        String Marca= request.getParameter("Marca");
        String Color= request.getParameter("Color");
        String TipoVehiculo= request.getParameter("Tipo");
      
        
        //Dato Cliente
        String Cliente=request.getParameter("Cliente");
        int idC= Integer.parseInt(Cliente);
        Cliente cliente= (Cliente) ss.get(Cliente.class, idC);
        
        //Guardar Vehiculo
        Ve.setNombreVehiculo(NombreVehiculo);
        Ve.setPlacas(Placas);
        Ve.setCiudad(Ciudad);
        Ve.setMarca(Marca);
        Ve.setColor(Color);
        Ve.setTipoVehiculo(TipoVehiculo);
        //Guardar el correscpondiente carro del cliente
        Ve.setCliente(cliente);
     
   
        
        
        
         
        
       ss.beginTransaction();
       ss.save(Ve);
        
        ss.getTransaction().commit();
        ss.close();
        
//        request.getRequestDispatcher("/pages/bloques/bloque.jsp").forward(request, response);
      
        
         }catch(HibernateException ex){
             System.out.println("Error"+ex);
         }
         
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
