
package Logica;

import DAO.DAO_Login;
import Mapeos_Tablas_BD.Logeo;
import Mapeos_Tablas_BD.Usuario;
import java.util.List;

/**
 *
 * @author Max
 */
public class Logica_Login {
    private final DAO_Login modeloAcceso = new DAO_Login();
    
    public List<Logeo> Verificar_usuarios(String usu, String pass){
        return modeloAcceso.Verificar_usuarios(usu,pass);
    }
    
}
