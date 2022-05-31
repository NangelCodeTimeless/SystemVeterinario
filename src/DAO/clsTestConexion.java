package DAO;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Nahum
 */
public class clsTestConexion {
    public int test(String usu, String pass, String bd, String ip){
        try {
            String usuario = usu;
            String pasword = pass;
            String driver = "org.postgresql.Driver";
            String ruta = "jdbc:postgresql://"+ip+":5432/"+bd;
            Class.forName(driver);
            DriverManager.getConnection(ruta, usuario, pasword);
            return 1;
        } catch (ClassNotFoundException | SQLException e) {
          return 0;
        }
    }
}
