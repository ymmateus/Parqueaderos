/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Cliente;
import Modelos.HibernateUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;

/**
 *
 * @author turbo core
 */
public class ContollerCliente extends HttpServlet {
 public Session ss = (Session)HibernateUtil.getSessionFactory().openSession();
    /**

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
                    RegistrarCliente(request,response);
                    break;
                 
                    
                default:System.out.println("Esta accion no existe");
                
            }
            
        }
        
        
    }
    private void RegistrarCliente(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try{
        response.setContentType("text/html;charset=UTF-8");
        
     
        Cliente cliente = new Cliente();
        
        String tdocumento= request.getParameter("Tipo");
        String documento= request.getParameter("Documento");
        String nombre= request.getParameter("Nombre");
        String apellido= request.getParameter("Apellido");
        String telefono= request.getParameter("Telefono");
        String codigo= request.getParameter("Codigo");
        String estado ="Activo";
        
        
        
        cliente.setTipoDocumento(tdocumento);
        cliente.setDocumento(Long.parseLong(documento));
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setTelefono(telefono);
        cliente.setCodigo(Long.parseLong(codigo));
        cliente.setEstado(estado);
        
        
        
         
        
       ss.beginTransaction();
       ss.save(cliente);
        
        ss.getTransaction().commit();
        ss.close();
        
//        request.getRequestDispatcher("/pages/bloques/bloque.jsp").forward(request, response);
      
        
         }catch(HibernateException ex){
             System.out.println("Error"+ex);
         }
         
    }

    
      public static String ListarTabla(){

        Session sr = (Session)HibernateUtil.getSessionFactory().openSession();
         Query q=sr.createQuery("From Cliente e");
         ArrayList<Cliente> ListaClientes = (ArrayList<Cliente>) q.list();
      
        
        String Result = "";
        Result += "        ";
        for (int i = 0; i < ListaClientes.size(); i++) {       
            Result +=     "  <tr>\n" ;
           Result +=  "                  <td>"+ListaClientes.get(i).getIdCliente() +" </td>\n" +
            
    
            "                  </td>\n" +
            "                  <td>"+ListaClientes.get(i).getTipoDocumento()+"</td>\n" +
            "                  <td>"+ListaClientes.get(i).getDocumento()+"</td>\n" +
            "                  <td>"+ListaClientes.get(i).getNombre()+"</td>\n" +
            "                  <td>"+ListaClientes.get(i).getApellido()+"</td>\n" +
            "                  <td>"+ListaClientes.get(i).getTelefono()+"</td>\n" +
            "                  <td>"+ListaClientes.get(i).getCodigo()+"</td>\n" +
            "                  <td>"+ListaClientes.get(i).getEstado()+"</td>\n" +
            
            "                </tr>";
        }
        return Result;
    }
 
    
       

    public static int  getCodeBloque (){
      Session ses = (Session)HibernateUtil.getSessionFactory().openSession();
      SQLQuery sqlq = ses.createSQLQuery("SELECT idBloque FROM bloque WHERE 1 ORDER BY idBloque DESC LIMIT 1");
     //   Query sqlq = ses.createSQLQuery("FROM Bloque WHERE 1 ORDER BY idBloque DESC LIMIT 1");
        int id = (int) sqlq.uniqueResult();
        ses.close();
       
        if(id > 0){
          return id+1;
        }else{
            return 1;
        }
    }   
    public static int  getCodeMBloque (){
      Session ses = (Session)HibernateUtil.getSessionFactory().openSession();
      SQLQuery sqlq = ses.createSQLQuery("SELECT idBloque FROM bloque WHERE 1 ORDER BY idBloque DESC LIMIT 1");
     //   Query sqlq = ses.createSQLQuery("FROM Bloque WHERE 1 ORDER BY idBloque DESC LIMIT 1");
        int id = (int) sqlq.uniqueResult();
        ses.close();
       
        if(id > 0){
          return id;
        }else{
            return 1;
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
