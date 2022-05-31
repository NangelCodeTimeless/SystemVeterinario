package Mapeos_Tablas_BD;

/**
 *
 * @author Nahum
 */
public class TipoProducto {
    private int id_tipoproducto;
    private String tipo; 
    private String descripcion;
    
    public TipoProducto(){}

    public TipoProducto(String tipo, String descripcion) {
        this.tipo = tipo;
        this.descripcion = descripcion;
    }
    
    public TipoProducto(int id_tipoproducto, String tipo, String descripcion) {
        this.id_tipoproducto = id_tipoproducto;
        this.tipo = tipo;
        this.descripcion = descripcion;
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return  tipo ;
    }
}
