package Mapeos_Tablas_BD;

import java.util.Date;

/**
 *
 * @author MAX
 */
public class Cliente {
    private String DNI;
    private String Nombre;
    private String Apellidos;
    private String Direccion;
    private String Telefono;
    private char Sexo;
    private Date Fecha_Nacimiento;
    private String Correo;
    private boolean Estado;

    public Cliente() {
    }

    public Cliente(String DNI) {
        this.DNI = DNI;
    }

    public Cliente(String DNI, String Nombre, String Apellidos, String Direccion, String Telefono, char Sexo, Date Fecha_Nacimiento, String Correo, boolean Estado) {
        this.DNI = DNI;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Sexo = Sexo;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Correo = Correo;
        this.Estado = Estado;
    }

    public Cliente(String DNI, String Nombre, String Apellidos, String Direccion, String Telefono, char Sexo, Date Fecha_Nacimiento, String Correo) {
        this.DNI = DNI;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Sexo = Sexo;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Correo = Correo;
    }

    public Cliente(String DNI, String Nombre, String Apellidos) {
        this.DNI = DNI;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public char getSexo() {
        return Sexo;
    }

    public void setSexo(char Sexo) {
        this.Sexo = Sexo;
    }

    public Date getFecha_Nacimiento() {
        return Fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(Date Fecha_Nacimiento) {
        this.Fecha_Nacimiento = Fecha_Nacimiento;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public boolean getEstado() {
        return Estado;
    }

    public void setEstado(boolean Estado) {
        this.Estado = Estado;
    }

}
