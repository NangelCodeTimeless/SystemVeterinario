package Mapeos_Tablas_BD;

import java.util.Date;

/**
 *
 * @author Nahum
 */
public class Consultas {
    private int id_consulta; 
    private int id_mascota;
    private String nombre_mascota;
    private String motivo;
    private String sintomas;
    private String usuario;
    private String hora;
    private Date fecha;

    public Consultas(int id_consulta, int id_mascota, String nombre_mascota, String motivo, String sintomas, String usuario, String hora, Date fecha) {
        this.id_consulta = id_consulta;
        this.id_mascota = id_mascota;
        this.nombre_mascota = nombre_mascota;
        this.motivo = motivo;
        this.sintomas = sintomas;
        this.usuario = usuario;
        this.hora = hora;
        this.fecha = fecha;
    }

    public Consultas(int id_consulta, int id_mascota, String motivo, String sintomas,String usuario) {
        this.id_consulta = id_consulta;
        this.id_mascota = id_mascota;
        this.motivo = motivo;
        this.sintomas = sintomas;
        this.usuario = usuario;
    }

    public Consultas() {
    }

    public Consultas(int id_mascota, String motivo, String sintomas, String usuario) {
        this.id_mascota = id_mascota;
        this.motivo = motivo;
        this.sintomas = sintomas;
        this.usuario = usuario;
    }

    public int getId_consulta() {
        return id_consulta;
    }

    public void setId_consulta(int id_consulta) {
        this.id_consulta = id_consulta;
    }

    public int getId_mascota() {
        return id_mascota;
    }

    public void setId_mascota(int id_mascota) {
        this.id_mascota = id_mascota;
    }

    public String getMotivo() {
        return motivo;
    }

    public void setMotivo(String motivo) {
        this.motivo = motivo;
    }

    public String getSintomas() {
        return sintomas;
    }

    public void setSintomas(String sintomas) {
        this.sintomas = sintomas;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getNombre_mascota() {
        return nombre_mascota;
    }

    public void setNombre_mascota(String nombre_mascota) {
        this.nombre_mascota = nombre_mascota;
    }
}
