package Mapeos_Tablas_BD;

import java.sql.Date;

public class Personal {
    private String DNI_P;
    private String Nombre;
    private String Apellidos;
    private Date Fecha_Nacimiento;
    private String Telefono;
    private String Direccion;
    private char Sexo;
    private boolean Estado;

    public Personal(String Nombre, String Apellidos) {
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
    }

    public Personal() {}

    public Personal(String DNI_P, String Nombre, String Apellidos, Date Fecha_Nacimiento, String Telefono, String Direccion, char Sexo) {
        this.DNI_P = DNI_P;
        this.Nombre = Nombre;
        this.Apellidos = Apellidos;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Telefono = Telefono;
        this.Direccion = Direccion;
        this.Sexo = Sexo;
    }

    public String getDNI_P() {
        return DNI_P;
    }

    public void setDNI_P(String DNI_P) {
        this.DNI_P = DNI_P;
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

    public Date getFecha_Nacimiento() {
        return Fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(Date Fecha_Nacimiento) {
        this.Fecha_Nacimiento = Fecha_Nacimiento;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public char getSexo() {
        return Sexo;
    }

    public void setSexo(char Sexo) {
        this.Sexo = Sexo;
    }

    public boolean isEstado() {
        return Estado;
    }

    public void setEstado(boolean Estado) {
        this.Estado = Estado;
    }
    
    }
