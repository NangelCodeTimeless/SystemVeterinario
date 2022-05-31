package Mapeos_Tablas_BD;

import java.sql.Date;


/**
 *
 * @author Nahum
 */

public class Producto {
    private int id_producto; 
    private String nombre; 
    private String descripcion;
    private double precio_compra;
    private double precio_venta; 
    private int stock;
    private double igv;
    private int id_tipoproducto; 
    private String tipo;
    private Date fecha_registro; 
    private Date fecha_vencimiento;
    private boolean estado;

    public Producto() {
    }
    
    // para modificar producto
    public Producto(int id_producto, String nombre, String descripcion, double precio_compra, double precio_venta, int stock, double igv, int id_tipoproducto,Date fecha_vencimiento) {
        this.id_producto = id_producto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio_compra = precio_compra;
        this.precio_venta = precio_venta;
        this.stock = stock;
        this.igv = igv;
        this.id_tipoproducto = id_tipoproducto;
        this.fecha_vencimiento = fecha_vencimiento;
    }

    // registrar producto
    public Producto(String nombre, String descripcion, double precio_compra, double precio_venta, int stock, double igv, int id_tipoproducto, Date fecha_vencimiento) {
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio_compra = precio_compra;
        this.precio_venta = precio_venta;
        this.stock = stock;
        this.igv = igv;
        this.id_tipoproducto = id_tipoproducto;
        this.fecha_vencimiento = fecha_vencimiento;
    }

    public Producto(int id_producto, String nombre, String descripcion, double precio_compra, double precio_venta, int stock, double igv, int id_tipoproducto, String tipo, Date fecha_registro, Date fecha_vencimiento, boolean estado) {
        this.id_producto = id_producto;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.precio_compra = precio_compra;
        this.precio_venta = precio_venta;
        this.stock = stock;
        this.igv = igv;
        this.id_tipoproducto = id_tipoproducto;
        this.tipo = tipo;
        this.fecha_registro = fecha_registro;
        this.fecha_vencimiento = fecha_vencimiento;
        this.estado = estado;
    }
    

    public int getId_producto() {
        return id_producto;
    }

    public void setId_producto(int id_producto) {
        this.id_producto = id_producto;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(double precio_compra) {
        this.precio_compra = precio_compra;
    }

    public double getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(double precio_venta) {
        this.precio_venta = precio_venta;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public double getIgv() {
        return igv;
    }

    public void setIgv(double igv) {
        this.igv = igv;
    }

    public int getId_tipoproducto() {
        return id_tipoproducto;
    }

    public void setId_tipoproducto(int id_tipoproducto) {
        this.id_tipoproducto = id_tipoproducto;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public Date getFecha_registro() {
        return fecha_registro;
    }

    public void setFecha_registro(Date fecha_registro) {
        this.fecha_registro = fecha_registro;
    }

    public Date getFecha_vencimiento() {
        return fecha_vencimiento;
    }

    public void setFecha_vencimiento(Date fecha_vencimiento) {
        this.fecha_vencimiento = fecha_vencimiento;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
    
}
