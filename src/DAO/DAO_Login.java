package DAO;

import Mapeos_Tablas_BD.Logeo;
import Mapeos_Tablas_BD.Permiso;
import Mapeos_Tablas_BD.Permisos_Tipo;
import Mapeos_Tablas_BD.TipoUsuario;
import Mapeos_Tablas_BD.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DAO_Login {
    private Connection cone = null;
    private CallableStatement cs = null;
    ResultSet rs = null;

    public List<Logeo> Verificar_usuarios(String usu, String pass) {
        List<Logeo> users;
        try {
            cone = clsConexion.getConnetion();
            cs = cone.prepareCall("select * from logeo(?,?)");
            cs.setString(1, usu);
            cs.setString(2, pass);
            rs = cs.executeQuery();
            users = new ArrayList<>();
            Usuario user = null;
            Permiso per = null;
            TipoUsuario tip = null;
            Logeo logeo = null;

            while (rs.next()) {
                user = new Usuario();
                per = new Permiso();
                tip = new TipoUsuario();
                logeo = new Logeo();
                tip.setId_tipousuario(rs.getInt(1));
                tip.setDescripcion(rs.getString(2));
                per.setModulo(rs.getString(3));
                user.setId_usuario(rs.getInt(4));
                user.setUsuario(rs.getString(5));
                logeo.setTipousuario(tip);
                logeo.setPermiso(per);
                logeo.setUsuario(user);
                users.add(logeo);
            }
            return users;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        } finally {
            try {
                if (cs != null) {
                    cs.close();
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }
}
