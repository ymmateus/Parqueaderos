package Modelos;
// Generated 18/08/2017 01:12:51 PM by Hibernate Tools 4.3.1


import java.util.Date;

/**
 * Turno generated by hbm2java
 */
public class Turno  implements java.io.Serializable {


     private Integer idTurno;
     private Usuario usuario;
     private String jornada;
     private String horaIngreso;
     private String horaSalida;

    public Turno() {
    }

    public Turno(Usuario usuario, String jornada, String horaIngreso, String horaSalida) {
       this.usuario = usuario;
       this.jornada = jornada;
       this.horaIngreso = horaIngreso;
       this.horaSalida = horaSalida;
    }
   
    public Integer getIdTurno() {
        return this.idTurno;
    }
    
    public void setIdTurno(Integer idTurno) {
        this.idTurno = idTurno;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public String getJornada() {
        return this.jornada;
    }
    
    public void setJornada(String jornada) {
        this.jornada = jornada;
    }
    public String getHoraIngreso() {
        return this.horaIngreso;
    }
    
    public void setHoraIngreso(String horaIngreso) {
        this.horaIngreso = horaIngreso;
    }
    public String getHoraSalida() {
        return this.horaSalida;
    }
    
    public void setHoraSalida(String horaSalida) {
        this.horaSalida = horaSalida;
    }




}


