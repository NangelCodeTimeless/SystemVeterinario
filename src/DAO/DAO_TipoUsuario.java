package DAO;

import Mapeos_Tablas_BD.TipoUsuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Nahum
 */
public class DAO_TipoUsuario {
    Connection cone = null;
    CallableStatement csm = null;
    ResultSet rs = null;
    
    public int registrar_tipo_usuario(String des){
        try {
            cone = clsConexion.getConnetion();
            //EN LA FUNCION HAY PARAMETROS LA PRIMERA ES: ENTRADA Y LA SEGUNDA ES LA SALIDA
            csm = cone.prepareCall("{CALL fu_add_tipo_usu(?,?)}");
            csm.setString(1,des);
            //LE DECIMOS A CALLABLEMENTS QUE TIENE UN PARAMETRO DE RETORNO DE LA FUNCION
            csm.registerOutParameter(2,java.sql.Types.INTEGER);
            csm.execute();
            //OBTENEMOS ESE PARAMETRO
            int rpta = csm.getInt(2);
            return rpta;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return 0;
        }finally {
            try {
                if (csm != null) {csm.close();}
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }

    public List<TipoUsuario> Listar_tipo_usuario() {
        List<TipoUsuario> tipos;
        try {
            cone = clsConexion.getConnetion();
            csm = cone.prepareCall("select * from fu_list_tipo_usuario()");
            rs = csm.executeQuery();
            tipos = new ArrayList<>();
            TipoUsuario tipo;
            while (rs.next()) {
                tipo = new TipoUsuario();
                tipo.setId_tipousuario(rs.getInt(1));
                tipo.setDescripcion(rs.getString(2));
                tipos.add(tipo);
            }
            return tipos;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        } finally {
            try {
                if (rs != null) {rs.close();}
                if (csm != null) {csm.close();}
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }

    public List<TipoUsuario> search_tipo_usuario(String nombre) {
        List<TipoUsuario> tipos;
        try {
            cone = clsConexion.getConnetion();
            csm = cone.prepareCall("select * from fu_search_tipo_nombre(?)");
            csm.setString(1, nombre);
            rs = csm.executeQuery();
            tipos = new ArrayList<>();
            TipoUsuario tipo;
            while (rs.next()) {
                tipo = new TipoUsuario();
                tipo.setId_tipousuario(rs.getInt(1));
                tipo.setDescripcion(rs.getString(2));
                tipos.add(tipo);
            }
            return tipos;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        } finally {
            try {
                if (rs != null) {rs.close();}
                if (csm != null) {csm.close();}
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }

    public boolean edit_tipo_usuario(int cod, String des){
        boolean rpta = false;
        try {
            cone = clsConexion.getConnetion();
            csm = cone.prepareCall("SELECT fu_edit_tipo_usuario(?,?)");
            csm.setInt(1, cod);
            csm.setString(2,des);
            rpta = csm.execute();
            return rpta;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }finally {
            try {
                if (csm != null) {csm.close();}
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return rpta;
    }
    
    public boolean eliminar_tipo_Usuario(int id) {
        boolean respuesta = false;
        try {
            cone=clsConexion.getConnetion();
            csm = cone.prepareCall("{CALL fu_del_tipo_usu(?)}");
            csm.setInt(1, id);
            respuesta = csm.execute();
            return respuesta;

        } catch (SQLException e) {
            System.out.println(e.getMessage());
            
        } finally {
            try {
                if (csm != null) {csm.close();}
            } catch (SQLException e) {System.out.println(e.getMessage());}
        }
        return respuesta;
    }
}
