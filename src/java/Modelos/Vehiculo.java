package Modelos;
// Generated 18/08/2017 01:12:51 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Vehiculo generated by hbm2java
 */
public class Vehiculo  implements java.io.Serializable {


     private Integer idVehiculo;
     private Cliente cliente;
     private String nombreVehiculo;
     private String placas;
     private String ciudad;
     private String marca;
     private String color;
     private String tipoVehiculo;
     private Set parqueos = new HashSet(0);
     private Set serviciostickets = new HashSet(0);

    public Vehiculo() {
    }

	
    public Vehiculo(Cliente cliente, String nombreVehiculo, String placas, String ciudad, String marca, String color, String tipoVehiculo) {
        this.cliente = cliente;
        this.nombreVehiculo = nombreVehiculo;
        this.placas = placas;
        this.ciudad = ciudad;
        this.marca = marca;
        this.color = color;
        this.tipoVehiculo = tipoVehiculo;
    }
    public Vehiculo(Cliente cliente, String nombreVehiculo, String placas, String ciudad, String marca, String color, String tipoVehiculo, Set parqueos, Set serviciostickets) {
       this.cliente = cliente;
       this.nombreVehiculo = nombreVehiculo;
       this.placas = placas;
       this.ciudad = ciudad;
       this.marca = marca;
       this.color = color;
       this.tipoVehiculo = tipoVehiculo;
       this.parqueos = parqueos;
       this.serviciostickets = serviciostickets;
    }
   
    public Integer getIdVehiculo() {
        return this.idVehiculo;
    }
    
    public void setIdVehiculo(Integer idVehiculo) {
        this.idVehiculo = idVehiculo;
    }
    public Cliente getCliente() {
        return this.cliente;
    }
    
    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    public String getNombreVehiculo() {
        return this.nombreVehiculo;
    }
    
    public void setNombreVehiculo(String nombreVehiculo) {
        this.nombreVehiculo = nombreVehiculo;
    }
    public String getPlacas() {
        return this.placas;
    }
    
    public void setPlacas(String placas) {
        this.placas = placas;
    }
    public String getCiudad() {
        return this.ciudad;
    }
    
    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
    public String getMarca() {
        return this.marca;
    }
    
    public void setMarca(String marca) {
        this.marca = marca;
    }
    public String getColor() {
        return this.color;
    }
    
    public void setColor(String color) {
        this.color = color;
    }
    public String getTipoVehiculo() {
        return this.tipoVehiculo;
    }
    
    public void setTipoVehiculo(String tipoVehiculo) {
        this.tipoVehiculo = tipoVehiculo;
    }
    public Set getParqueos() {
        return this.parqueos;
    }
    
    public void setParqueos(Set parqueos) {
        this.parqueos = parqueos;
    }
    public Set getServiciostickets() {
        return this.serviciostickets;
    }
    
    public void setServiciostickets(Set serviciostickets) {
        this.serviciostickets = serviciostickets;
    }

    @Override
    public String toString() {
        return nombreVehiculo+"     "+placas;
    }




}


