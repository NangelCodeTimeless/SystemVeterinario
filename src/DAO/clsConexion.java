package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;
import javax.swing.JOptionPane;

/**
 *
 * @author MAX
 */
public class clsConexion {
    private static Connection con = null;
    public static Connection getConnetion() {
        try {
            if (con == null) { 
                Runtime.getRuntime().addShutdownHook(new Listener());
                ResourceBundle rc = ResourceBundle.getBundle("configuracion/configuracion");  
                String usuario = rc.getString("usuario");
                String pass = rc.getString("contraseña");
                String driver = rc.getString("driver");
                String ruta = rc.getString("url").replace("\\","");
                Class.forName(driver);
                con = DriverManager.getConnection(ruta, usuario, pass);
            }
            return con;
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null,"NO HAY CONEXION CON EL SERVIDOR","MENSAJE", JOptionPane.ERROR_MESSAGE);
        }
        return con;
    }
    
    public static class Listener extends Thread {

        @Override
        public void run() {
            try {
                java.sql.Connection cone = clsConexion.getConnetion();
                cone.close(); 
            } catch (SQLException e) {
                System.out.println(e.getMessage());
                throw new RuntimeException("Error al Cerrar la Conexión");
            }
        }
    } 
}
