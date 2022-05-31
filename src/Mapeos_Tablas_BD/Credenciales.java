
package Mapeos_Tablas_BD;
public class Credenciales {
    String servidor;
    String nomBD;
    String usuario;
    String pass;
    
    public Credenciales(){}

    public Credenciales(String servidor, String nomBD, String usuario, String pass) {
        this.servidor = servidor;
        this.nomBD = nomBD;
        this.usuario = usuario;
        this.pass = pass;
    }

    public String getServidor() {
        return servidor;
    }

    public void setServidor(String servidor) {
        this.servidor = servidor;
    }

    public String getNomBD() {
        return nomBD;
    }

    public void setNomBD(String nomBD) {
        this.nomBD = nomBD;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    
}
