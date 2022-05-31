
package Mapeos_Tablas_BD;
import java.sql.Date;

/**
 *
 * @author Nahum
 */
public class Compra {
    private int cod_prov;
    private int cod_usuario;
    private String tipo_doc;
    
    private int id_comp;
    private String usuario;
    private String nombre_personal; 
    private String apellido;
    private int id_producto;
    private String nom_producto;
    private double precio_compra;
    private double igv;
    private int cantidad;
    private double total; 
    private String razon_social;
    private String ruc;
    private Date fecha_entr;
    private double subtotal;
    private boolean estado;

    public Compra(int cod_prov, int cod_usuario, String tipo_doc, int id_comp, String usuario, String nombre_personal, String apellido, int id_producto, String nom_producto, double precio_compra, double igv, int cantidad, double total, String razon_social, String ruc, Date fecha_entr, double subtotal) {
        this.cod_prov = cod_prov;
        this.cod_usuario = cod_usuario;
        this.tipo_doc = tipo_doc;
        this.id_comp = id_comp;
        this.usuario = usuario;
        this.nombre_personal = nombre_personal;
        this.apellido = apellido;
        this.id_producto = id_producto;
        this.nom_producto = nom_producto;
        this.precio_compra = precio_compra;
        this.igv = igv;
        this.cantidad = cantidad;
        this.total = total;
        this.razon_social = razon_social;
        this.ruc = ruc;
        this.fecha_entr = fecha_entr;
        this.subtotal = subtotal;
    }

    public Compra(int id_comp, String usuario, String nombre_personal, String apellido, double total, String razon_social, String ruc, Date fecha_entr, boolean estado) {
        this.id_comp = id_comp;
        this.usuario = usuario;
        this.nombre_personal = nombre_personal;
        this.apellido = apellido;
        this.total = total;
        this.razon_social = razon_social;
        this.ruc = ruc;
        this.fecha_entr = fecha_entr;
        this.estado = estado;
    }

    
    
    public Compra(){}

    public Compra(int cod_prov, int cod_usuario, Date fecha_entr, double total, String tipo_doc) {
        this.cod_prov = cod_prov;
        this.cod_usuario = cod_usuario;
        this.fecha_entr = fecha_entr;
        this.total = total;
        this.tipo_doc = tipo_doc;
    }

    public Compra(int id_comp, int cod_prov, int cod_usuario, Date fecha_entr, double total, String tipo_doc) {
        this.id_comp = id_comp;
        this.cod_prov = cod_prov;
        this.cod_usuario = cod_usuario;
        this.fecha_entr = fecha_entr;
        this.total = total;
        this.tipo_doc = tipo_doc;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getNombre_personal() {
        return nombre_personal;
    }

    public void setNombre_personal(String nombre_personal) {
        this.nombre_personal = nombre_personal;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNom_producto() {
        return nom_producto;
    }

    public void setNom_producto(String nom_producto) {
        this.nom_producto = nom_producto;
    }

    public double getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(double precio_compra) {
        this.precio_compra = precio_compra;
    }

    public double getIgv() {
        return igv;
    }

    public void setIgv(double igv) {
        this.igv = igv;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
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

    public int getId_comp() {
        return id_comp;
    }

    public void setId_comp(int id_comp) {
        this.id_comp = id_comp;
    }

    public int getCod_prov() {
        return cod_prov;
    }

    public void setCod_prov(int cod_prov) {
        this.cod_prov = cod_prov;
    }

    public int getCod_usuario() {
        return cod_usuario;
    }

    public void setCod_usuario(int cod_usuario) {
        this.cod_usuario = cod_usuario;
    }

    public Date getFecha_entr() {
        return fecha_entr;
    }

    public void setFecha_entr(Date fecha_entr) {
        this.fecha_entr = fecha_entr;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getTipo_doc() {
        return tipo_doc;
    }

    public void setTipo_doc(String tipo_doc) {
        this.tipo_doc = tipo_doc;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

}
