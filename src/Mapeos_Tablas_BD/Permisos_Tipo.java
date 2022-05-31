
package Mapeos_Tablas_BD;

/**
 *
 * @author Nahum
 */
public class Permisos_Tipo {
    private int id_tipousuario;
    private int id_permiso;
    private String descripcion;
    private String modulo;
    private boolean estado;

    public Permisos_Tipo() {
    }

    public Permisos_Tipo(int id_tipousuario, int id_permiso, String descripcion, String modulo, boolean estado) {
        this.id_tipousuario = id_tipousuario;
        this.id_permiso = id_permiso;
        this.descripcion = descripcion;
        this.modulo = modulo;
        this.estado = estado;
    }

    public Permisos_Tipo(int id_tipousuario, int id_permiso, boolean estado) {
        this.id_tipousuario = id_tipousuario;
        this.id_permiso = id_permiso;
        this.estado = estado;
    }
    
    public int getId_tipousuario() {
        return id_tipousuario;
    }

    public void setId_tipousuario(int id_tipousuario) {
        this.id_tipousuario = id_tipousuario;
    }

    public int getId_permiso() {
        return id_permiso;
    }

    public void setId_permiso(int id_permiso) {
        this.id_permiso = id_permiso;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getModulo() {
        return modulo;
    }

    public void setModulo(String modulo) {
        this.modulo = modulo;
    }

    public boolean isEstado() {
        return estado;
    }

    public void setEstado(boolean estado) {
        this.estado = estado;
    }

    
}
