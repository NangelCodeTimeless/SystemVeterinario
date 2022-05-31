package Mapeos_Tablas_BD;

/**
 *
 * @author Nahum
 */
public class TipoUsuario {
    private int id_tipousuario; 
    private String descripcion;

    public TipoUsuario() { }

    public TipoUsuario(int id_tipousuario, String descripcion) {
        this.id_tipousuario = id_tipousuario;
        this.descripcion = descripcion;
    }

    public int getId_tipousuario() {
        return id_tipousuario;
    }

    public void setId_tipousuario(int id_tipousuario) {
        this.id_tipousuario = id_tipousuario;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return descripcion ;
    }
}
