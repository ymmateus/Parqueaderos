/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Cliente;
import Modelos.HibernateUtil;
import Modelos.Usuario;
import Modelos.Vehiculo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import  java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import org.hibernate.Query;

/**
 *
 * @author AdsiAndroid
 */
public class ControllerUsuario extends HttpServlet {
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
                    RegistrarUsuario(request,response);
                    break;
              
                 
                    
                default:System.out.println("Esta accion no existe");
                
            }
            
        }
        
        
    }

     private void RegistrarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try{
        response.setContentType("text/html;charset=UTF-8");
        
     
        Usuario Usu = new Usuario();
        
        String  tipoDocumento= request.getParameter("TipoDocumento");
        String documento= request.getParameter("Documento");
        String nombre= request.getParameter("Nombre");
        String apellido= request.getParameter("Apellido");
        String FechaNacimiento= request.getParameter("FechaNacimiento");
        
        String Email= request.getParameter("Email");
        String Celular= request.getParameter("Celular");
        String Direccion= request.getParameter("Direccion");
        String Tipo= request.getParameter("Tipo");
        String Estado= request.getParameter("Estado");
        
        
        
        Usu.setTipoDocumento(tipoDocumento);
        Usu.setDocumento(Integer.parseInt(documento));
        Usu.setNombre(nombre);
        Usu.setApellido(apellido);
        Usu.setFechaNacimiento(FechaNacimiento);
        Usu.setEmail(Email);
        Usu.setCelular(Integer.parseInt(Celular));
        Usu.setDireccion(Direccion);
        Usu.setTipo(Tipo);
        Usu.setEstado(Estado);
        
        
        
         
        
       ss.beginTransaction();
       ss.save(Usu);
        
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

              public static String ListarTabla(){

        Session sr = (Session)HibernateUtil.getSessionFactory().openSession();
         Query q=sr.createQuery("From Usuario e");
         ArrayList<Usuario> ListaUsuario = (ArrayList<Usuario>) q.list();
      
        
        String Result = "";
        Result += "        ";
        for (int i = 0; i < ListaUsuario.size(); i++) {       
            Result +=     "  <tr>\n" ;
           Result +=  "                  <td>"+ListaUsuario.get(i).getIdUsuario()+" </td>\n" +
            "                  <td>"+ListaUsuario.get(i).getTipoDocumento()+"\n" +
    
            "                  </td>\n" +
            
            "                  <td>"+ListaUsuario.get(i).getDocumento()+"</td>\n" +
            "                  <td>"+ListaUsuario.get(i).getNombre()+"</td>\n" +
            "                  <td>"+ListaUsuario.get(i).getApellido()+"</td>\n" +
            "                  <td>"+ListaUsuario.get(i).getFechaNacimiento()+"</td>\n" +
            "                  <td>"+ListaUsuario.get(i).getEmail()+"</td>\n" +
            "                  <td>"+ListaUsuario.get(i).getCelular()+"</td>\n" +
            "                  <td>"+ListaUsuario.get(i).getDireccion()+"</td>\n" +
            "                  <td>"+ListaUsuario.get(i).getEstado()+"</td>\n" +
            "                  <td>"+ListaUsuario.get(i).getTipo()+"</td>\n" +
            
            "                </tr>";
        }
        return Result;
    }
    
    
}
