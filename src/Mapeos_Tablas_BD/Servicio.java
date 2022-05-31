package Mapeos_Tablas_BD;

/**
 *
 * @author NICOLAS
 */
public class Servicio {

    private int idServicio;
    private String nombreServicio;
    private String descripcion;
    private float precio;
    private boolean estado;

    public Servicio() { }

    public Servicio(int idServicio, String nombreServicio, String descripcion, float precio) {
        this.idServicio = idServicio;
        this.nombreServicio = nombreServicio;
        this.descripcion = descripcion;
        this.precio = precio;
    }

    public Servicio(String nombreServicio, String descripcion, float precio, boolean estado) {
        this.nombreServicio = nombreServicio;
        this.descripcion = descripcion;
        this.precio = precio;
        this.estado = estado;
    }

    public Servicio(int idServicio) {
        this.idServicio = idServicio;
    }

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicio) {
        this.idServicio = idServicio;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public boolean getEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
}
