package Logica;

import DAO.DAO_TipoUsuario;
import Mapeos_Tablas_BD.TipoUsuario;
import java.util.List;

/**
 *
 * @author Nahum
 */
public class Logica_Tipo_Usuario {
    DAO_TipoUsuario dao_tipo;
    
     public int registrar_tipo_usuario(String des){
         dao_tipo = new DAO_TipoUsuario();
         return dao_tipo.registrar_tipo_usuario(des);
     }
    
    public List<TipoUsuario> Listar_tipo_usuario(){
        dao_tipo = new DAO_TipoUsuario();
        return dao_tipo.Listar_tipo_usuario();
    }
    
    
    public List<TipoUsuario> search_tipo_usuario(String nombre) {
        dao_tipo = new DAO_TipoUsuario();
        return dao_tipo.search_tipo_usuario(nombre);
    }
    
    public boolean edit_tipo_usuario(int cod, String des){
        dao_tipo = new DAO_TipoUsuario();
        return dao_tipo.edit_tipo_usuario(cod, des);
    }
    
    public boolean eliminar_tipo_Usuario(int id) {
        dao_tipo = new DAO_TipoUsuario();
        return dao_tipo.eliminar_tipo_Usuario(id);
    }
}
