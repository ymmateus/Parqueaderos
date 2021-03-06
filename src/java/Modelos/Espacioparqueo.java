package Modelos;
// Generated 18/08/2017 01:12:51 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Espacioparqueo generated by hbm2java
 */
public class Espacioparqueo  implements java.io.Serializable {


     private Integer idEspacioParqueo;
     private long numero;
     private String tipo;
     private String parasol;
     private String estado;
     private Set parqueos = new HashSet(0);

    public Espacioparqueo() {
    }

	
    public Espacioparqueo(long numero, String tipo, String parasol, String estado) {
        this.numero = numero;
        this.tipo = tipo;
        this.parasol = parasol;
        this.estado = estado;
    }
    public Espacioparqueo(long numero, String tipo, String parasol, String estado, Set parqueos) {
       this.numero = numero;
       this.tipo = tipo;
       this.parasol = parasol;
       this.estado = estado;
       this.parqueos = parqueos;
    }
   
    public Integer getIdEspacioParqueo() {
        return this.idEspacioParqueo;
    }
    
    public void setIdEspacioParqueo(Integer idEspacioParqueo) {
        this.idEspacioParqueo = idEspacioParqueo;
    }
    public long getNumero() {
        return this.numero;
    }
    
    public void setNumero(long numero) {
        this.numero = numero;
    }
    public String getTipo() {
        return this.tipo;
    }
    
    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    public String getParasol() {
        return this.parasol;
    }
    
    public void setParasol(String parasol) {
        this.parasol = parasol;
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

    @Override
    public String toString() {
        return String.valueOf(numero) ;
    }




}


