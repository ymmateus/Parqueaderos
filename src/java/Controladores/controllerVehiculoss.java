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
public class controllerVehiculoss extends HttpServlet {
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
        
        String NombreVehiculo= request.getParameter("NombreVehiculo");
        String Placas= request.getParameter("Placas");
        String Ciudad= request.getParameter("Ciudad");
        String Marca= request.getParameter("Marca");
        String Color= request.getParameter("Color");
        String TipoVehiculo= request.getParameter("TipoVehiculo");
      
        
        
        
        Ve.setNombreVehiculo(NombreVehiculo);
        Ve.setPlacas(Placas);
        Ve.setCiudad(Ciudad);
        Ve.setMarca(Marca);
        Ve.setColor(Color);
        Ve.setTipoVehiculo(TipoVehiculo);
        
     
   
        
        
        
         
        
       ss.beginTransaction();
       ss.save(Ve);
        
        ss.getTransaction().commit();
        ss.close();
        
//        request.getRequestDispatcher("/pages/bloques/bloque.jsp").forward(request, response);
      
        
         }catch(HibernateException ex){
             System.out.println("Error"+ex);
         }
         
    }
    
          public static String ListarTabla(){

        Session sr = (Session)HibernateUtil.getSessionFactory().openSession();
         Query q=sr.createQuery("From Vehiculo e");
         ArrayList<Vehiculo> ListaVehiculo = (ArrayList<Vehiculo>) q.list();
      
        
        String Result = "";
        Result += "        ";
        for (int i = 0; i < ListaVehiculo.size(); i++) {       
            Result +=     "  <tr>\n" ;
           Result +=  "                  <td>"+ListaVehiculo.get(i).getIdVehiculo()+" </td>\n" +
            "                  <td>"+ListaVehiculo.get(i).getNombreVehiculo()+"\n" +
    
            "                  </td>\n" +
            
            "                  <td>"+ListaVehiculo.get(i).getPlacas()+"</td>\n" +
            "                  <td>"+ListaVehiculo.get(i).getCiudad()+"</td>\n" +
            "                  <td>"+ListaVehiculo.get(i).getMarca()+"</td>\n" +
            "                  <td>"+ListaVehiculo.get(i).getColor()+"</td>\n" +
            "                  <td>"+ListaVehiculo.get(i).getTipoVehiculo()+"</td>\n" +
            "                  <td>"+ListaVehiculo.get(i).getCliente()+"</td>\n" +
            
            "                </tr>";
        }
        return Result;
    } 
    
    
    }
