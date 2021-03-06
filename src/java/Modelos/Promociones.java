package Modelos;
// Generated 18/08/2017 01:12:51 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Promociones generated by hbm2java
 */
public class Promociones  implements java.io.Serializable {


     private Integer idPromociones;
     private String tipoPromocion;
     private String nombre;
     private String descripcion;
     private String estado;
     private Set parqueos = new HashSet(0);
     private Set serviciostickets = new HashSet(0);

    public Promociones() {
    }

	
    public Promociones(String tipoPromocion, String nombre, String descripcion, String estado) {
        this.tipoPromocion = tipoPromocion;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.estado = estado;
    }
    public Promociones(String tipoPromocion, String nombre, String descripcion, String estado, Set parqueos, Set serviciostickets) {
       this.tipoPromocion = tipoPromocion;
       this.nombre = nombre;
       this.descripcion = descripcion;
       this.estado = estado;
       this.parqueos = parqueos;
       this.serviciostickets = serviciostickets;
    }
   
    public Integer getIdPromociones() {
        return this.idPromociones;
    }
    
    public void setIdPromociones(Integer idPromociones) {
        this.idPromociones = idPromociones;
    }
    public String getTipoPromocion() {
        return this.tipoPromocion;
    }
    
    public void setTipoPromocion(String tipoPromocion) {
        this.tipoPromocion = tipoPromocion;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    public String getEstado() {
        return this.estado;
    }
    
    public void setEstado(String estado) {
        this.estado = estado;
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




}


