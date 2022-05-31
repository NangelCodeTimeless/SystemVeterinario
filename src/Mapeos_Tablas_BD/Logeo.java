package Mapeos_Tablas_BD;

/**
 *
 * @author MAX
 */
public class Logeo {

    private TipoUsuario tipousuario;
    private Permiso permiso;
    private Usuario usuario;

    public Logeo() {
    }

    public Logeo(TipoUsuario tipousuario, Permiso permiso, Usuario usuario) {
        this.tipousuario = tipousuario;
        this.permiso = permiso;
        this.usuario = usuario;
    }

    public TipoUsuario getTipousuario() {
        return tipousuario;
    }

    public void setTipousuario(TipoUsuario tipousuario) {
        this.tipousuario = tipousuario;
    }

    public Permiso getPermiso() {
        return permiso;
    }

    public void setPermiso(Permiso permiso) {
        this.permiso = permiso;
    }

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    
}
