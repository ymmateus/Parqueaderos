package Modelos;
// Generated 18/08/2017 01:12:51 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Serviciosticket generated by hbm2java
 */
public class Serviciosticket  implements java.io.Serializable {


     private Integer idServiciosTicket;
     private Promociones promociones;
     private Servicio servicio;
     private Usuario usuario;
     private Vehiculo vehiculo;
     private String estado;
     private long valorServicio;
     private Set tickets = new HashSet(0);

    public Serviciosticket() {
    }

	
    public Serviciosticket(Servicio servicio, Usuario usuario, Vehiculo vehiculo, String estado, long valorServicio) {
        this.servicio = servicio;
        this.usuario = usuario;
        this.vehiculo = vehiculo;
        this.estado = estado;
        this.valorServicio = valorServicio;
    }
    public Serviciosticket(Promociones promociones, Servicio servicio, Usuario usuario, Vehiculo vehiculo, String estado, long valorServicio, Set tickets) {
       this.promociones = promociones;
       this.servicio = servicio;
       this.usuario = usuario;
       this.vehiculo = vehiculo;
       this.estado = estado;
       this.valorServicio = valorServicio;
       this.tickets = tickets;
    }
   
    public Integer getIdServiciosTicket() {
        return this.idServiciosTicket;
    }
    
    public void setIdServiciosTicket(Integer idServiciosTicket) {
        this.idServiciosTicket = idServiciosTicket;
    }
    public Promociones getPromociones() {
        return this.promociones;
    }
    
    public void setPromociones(Promociones promociones) {
        this.promociones = promociones;
    }
    public Servicio getServicio() {
        return this.servicio;
    }
    
    public void setServicio(Servicio servicio) {
        this.servicio = servicio;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public Vehiculo getVehiculo() {
        return this.vehiculo;
    }
    
    public void setVehiculo(Vehiculo vehiculo) {
        this.vehiculo = vehiculo;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public long getValorServicio() {
        return this.valorServicio;
    }
    
    public void setValorServicio(long valorServicio) {
        this.valorServicio = valorServicio;
    }
    public Set getTickets() {
        return this.tickets;
    }
    
    public void setTickets(Set tickets) {
        this.tickets = tickets;
    }

    @Override
    public String toString() {
        return estado+"  "+valorServicio;
    }




}


