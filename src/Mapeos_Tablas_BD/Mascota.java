package Mapeos_Tablas_BD;

import java.util.Date;

/**
 *
 * @author Nahum
 */
public class Mascota {
    private int id_mascota;
    private String nombre_m;
    private Cliente cliente;
    private String genero;
    private String color;
    private String raza;
    private Date fecha_nacimiento;
    private TipoMascota tipo_mas;
    private boolean estado;
    
    public Mascota(){}

    public Mascota(int id_mascota, String nombre_m, Cliente cliente, String genero, String color, String raza, Date fecha_nacimiento, TipoMascota tipo_mas) {
        this.id_mascota = id_mascota;
        this.nombre_m = nombre_m;
        this.cliente = cliente;
        this.genero = genero;
        this.color = color;
        this.raza = raza;
        this.fecha_nacimiento = fecha_nacimiento;
        this.tipo_mas = tipo_mas;
    }

    public Mascota(String nombre_m, Cliente cliente, String genero, String color, String raza, Date fecha_nacimiento, TipoMascota tipo_mas) {
        this.nombre_m = nombre_m;
        this.cliente = cliente;
        this.genero = genero;
        this.color = color;
        this.raza = raza;
        this.fecha_nacimiento = fecha_nacimiento;
        this.tipo_mas = tipo_mas;
    }

    public int getId_mascota() {
        return id_mascota;
    }

    public void setId_mascota(int id_mascota) {
        this.id_mascota = id_mascota;
    }

    public String getNombre_m() {
        return nombre_m;
    }

    public void setNombre_m(String nombre_m) {
        this.nombre_m = nombre_m;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public Date getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(Date fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public TipoMascota getTipo_mas() {
        return tipo_mas;
    }

    public void setTipo_mas(TipoMascota tipo_mas) {
        this.tipo_mas = tipo_mas;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
}
