package Modelos;
// Generated 18/08/2017 01:12:51 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Parqueaderos generated by hbm2java
 */
public class Parqueaderos  implements java.io.Serializable {


     private Integer idParqueaderos;
     private Usuario usuario;
     private String nombre;
     private String nit;
     private String direccion;
     private String telefono;
     private String numeroDian;
     private Set tarifases = new HashSet(0);
     private Set tickets = new HashSet(0);

    public Parqueaderos() {
    }

	
    public Parqueaderos(Usuario usuario) {
        this.usuario = usuario;
    }
    public Parqueaderos(Usuario usuario, String nombre, String nit, String direccion, String telefono, String numeroDian, Set tarifases, Set tickets) {
       this.usuario = usuario;
       this.nombre = nombre;
       this.nit = nit;
       this.direccion = direccion;
       this.telefono = telefono;
       this.numeroDian = numeroDian;
       this.tarifases = tarifases;
       this.tickets = tickets;
    }
   
    public Integer getIdParqueaderos() {
        return this.idParqueaderos;
    }
    
    public void setIdParqueaderos(Integer idParqueaderos) {
        this.idParqueaderos = idParqueaderos;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getNit() {
        return this.nit;
    }
    
    public void setNit(String nit) {
        this.nit = nit;
    }
    public String getDireccion() {
        return this.direccion;
    }
    
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getNumeroDian() {
        return this.numeroDian;
    }
    
    public void setNumeroDian(String numeroDian) {
        this.numeroDian = numeroDian;
    }
    public Set getTarifases() {
        return this.tarifases;
    }
    
    public void setTarifases(Set tarifases) {
        this.tarifases = tarifases;
    }
    public Set getTickets() {
        return this.tickets;
    }
    
    public void setTickets(Set tickets) {
        this.tickets = tickets;
    }

    @Override
    public String toString() {
        return nombre+"  "+nit;
    }




}


