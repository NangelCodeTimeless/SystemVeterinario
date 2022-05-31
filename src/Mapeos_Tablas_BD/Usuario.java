package Mapeos_Tablas_BD;

/**
 *
 * @author MAX
 */
public class Usuario {
    private int Id_usuario;
    private String Dni_p;
    private String nombre;
    private String Usuario;
    private String Contrasenia;
    private int Id_tipoUsuario;
    private String des;
    private boolean Estado;

    public Usuario() { }

    public Usuario(String Usuario, String Contrasenia) {
        this.Usuario = Usuario;
        this.Contrasenia = Contrasenia;
    }

    public Usuario(int Id_usuario, String Dni_p, String nombre, String Usuario, String Contrasenia, int Id_tipoUsuario, String des, boolean Estado) {
        this.Id_usuario = Id_usuario;
        this.Dni_p = Dni_p;
        this.nombre = nombre;
        this.Usuario = Usuario;
        this.Contrasenia = Contrasenia;
        this.Id_tipoUsuario = Id_tipoUsuario;
        this.des = des;
        this.Estado = Estado;
    }

    public Usuario(int Id_usuario, String Dni_p, String Usuario, String Contrasenia, boolean Estado, int Id_tipoUsuario) {
        this.Id_usuario = Id_usuario;
        this.Dni_p = Dni_p;
        this.Usuario = Usuario;
        this.Contrasenia = Contrasenia;
        this.Estado = Estado;
        this.Id_tipoUsuario = Id_tipoUsuario;
    }

    public Usuario(String Dni_p, String Usuario, String Contrasenia, int Id_tipoUsuario) {
        this.Dni_p = Dni_p;
        this.Usuario = Usuario;
        this.Contrasenia = Contrasenia;
        this.Id_tipoUsuario = Id_tipoUsuario;
    }
    
    public Usuario(int Id_usuario, String Usuario, String Contrasenia, boolean Estado) {
        this.Id_usuario = Id_usuario;
        this.Usuario = Usuario;
        this.Contrasenia = Contrasenia;
        this.Estado = Estado;
    }

    public int getId_usuario() {
        return Id_usuario;
    }

    public void setId_usuario(int Id_usuario) {
        this.Id_usuario = Id_usuario;
    }

    public String getDni_p() {
        return Dni_p;
    }

    public void setDni_p(String Dni_p) {
        this.Dni_p = Dni_p;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getContrasenia() {
        return Contrasenia;
    }

    public void setContrasenia(String Contrasenia) {
        this.Contrasenia = Contrasenia;
    }

    public int getId_tipoUsuario() {
        return Id_tipoUsuario;
    }

    public void setId_tipoUsuario(int Id_tipoUsuario) {
        this.Id_tipoUsuario = Id_tipoUsuario;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public boolean isEstado() {
        return Estado;
    }

    public void setEstado(boolean Estado) {
        this.Estado = Estado;
    }
}
