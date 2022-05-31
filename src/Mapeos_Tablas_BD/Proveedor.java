package Mapeos_Tablas_BD;

/**
 *
 * @author Nahum
 */
public class Proveedor {

    private int id_prov;
    private String razon_social;
    private String ruc;
    private String telefono;
    private String direccion;
    private String email;
    private boolean estado;

    public Proveedor() {
    }

    public Proveedor(int id_prov, String razon_social, String ruc, String telefono, String direccion, String email, boolean estado) {
        this.id_prov = id_prov;
        this.razon_social = razon_social;
        this.ruc = ruc;
        this.telefono = telefono;
        this.direccion = direccion;
        this.email = email;
        this.estado = estado;
    }
    
    
    public Proveedor(String razon_social, String ruc, String telefono, String direccion, String email) {
        this.razon_social = razon_social;
        this.ruc = ruc;
        this.telefono = telefono;
        this.direccion = direccion;
        this.email = email;
    }

    public Proveedor(int id_prov, String razon_social, String ruc, String telefono, String direccion, String email) {
        this.id_prov = id_prov;
        this.razon_social = razon_social;
        this.ruc = ruc;
        this.telefono = telefono;
        this.direccion = direccion;
        this.email = email;
    }

    
    

    public int getId_prov() {
        return id_prov;
    }

    public void setId_prov(int id_prov) {
        this.id_prov = id_prov;
    }

    public String getRazon_social() {
        return razon_social;
    }

    public void setRazon_social(String razon_social) {
        this.razon_social = razon_social;
    }

    public String getRuc() {
        return ruc;
    }

    public void setRuc(String ruc) {
        this.ruc = ruc;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
    
}
