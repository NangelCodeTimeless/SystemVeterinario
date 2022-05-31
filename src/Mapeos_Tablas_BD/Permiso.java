package Mapeos_Tablas_BD;

/**
 *
 * @author Nahum
 */
public class Permiso {
    private int id_permiso; 
    private String modulo;
    private String descripcion;
    private boolean estado;

    public Permiso() { }

    public Permiso(String modulo, String descripcion) {
        this.modulo = modulo;
        this.descripcion = descripcion;
    }

    public Permiso(int id_permiso, String modulo, String descripcion) {
        this.id_permiso = id_permiso;
        this.modulo = modulo;
        this.descripcion = descripcion;
    }
    
    public Permiso(int id_permiso, String modulo, String descripcion, boolean estado) {
        this.id_permiso = id_permiso;
        this.modulo = modulo;
        this.descripcion = descripcion;
        this.estado = estado;
    }

    public int getId_permiso() {
        return id_permiso;
    }

    public void setId_permiso(int id_permiso) {
        this.id_permiso = id_permiso;
    }

    public String getModulo() {
        return modulo;
    }

    public void setModulo(String modulo) {
        this.modulo = modulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }
}
