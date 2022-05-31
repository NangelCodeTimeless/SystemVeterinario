package Mapeos_Tablas_BD;

/**
 *
 * @author Nahum
 */
public class Pedido {
    private int codigo;
    private String nombreProd;
    private int cantidad;
    private double precio_compra;
    private double subtotal;
    
    public Pedido(){}

    public Pedido(int codigo, String nombreProd, int cantidad, double precio_compra, double subtotal) {
        this.codigo = codigo;
        this.nombreProd = nombreProd;
        this.cantidad = cantidad;
        this.precio_compra = precio_compra;
        this.subtotal = subtotal;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombreProd() {
        return nombreProd;
    }

    public void setNombreProd(String nombreProd) {
        this.nombreProd = nombreProd;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public double getPrecio_compra() {
        return precio_compra;
    }

    public void setPrecio_compra(double precio_compra) {
        this.precio_compra = precio_compra;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }
}
