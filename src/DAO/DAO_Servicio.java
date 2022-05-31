package DAO;

import Mapeos_Tablas_BD.Servicio;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author NICOLAS
 */
public class DAO_Servicio{
    Connection con = null;
    CallableStatement cstm =  null;
    PreparedStatement pstm = null;
    ResultSet rs = null;

    public List<Servicio> ListarServicio() {
        List<Servicio> listaServi;
        
        try{
            con = clsConexion.getConnetion();
            cstm = con.prepareCall("select * from listarservicios()");
            rs = cstm.executeQuery();
            listaServi = new ArrayList<>();
            Servicio servi;
            
            while(rs.next()){
                servi = new Servicio();
                servi.setIdServicio(rs.getInt(1));
                servi.setNombreServicio(rs.getString(2));
                servi.setDescripcion(rs.getString(3));
                servi.setPrecio(rs.getFloat(4));
                
                listaServi.add(servi);
            }
            return listaServi;
        }catch(SQLException e){
           System.out.println(e.getMessage());
           return null;
        }finally {
            try {
                if (rs != null) {rs.close();}
                if (cstm != null) {cstm.close();}
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }

    public int AgregarServicio(Servicio servicio) {
        int respuesta = -1;
        con = clsConexion.getConnetion();
        try {
            cstm = con.prepareCall("{call agregar_servicio(?,?,?,?)}");
            cstm.setString(1,servicio.getNombreServicio());
            cstm.setString(2, servicio.getDescripcion());
            cstm.setFloat(3, servicio.getPrecio());
            cstm.setBoolean(4, servicio.getEstado());
            respuesta = cstm.executeUpdate();
            return respuesta;
        } catch (SQLException e) {
            return respuesta; 
            //System.out.println(e.getMessage());
        }finally{
            try {
                if (pstm != null){
                    pstm.close();
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        
    }

    public int ModificarServicio(Servicio servicio) {
        int respuesta = -1;
        con = clsConexion.getConnetion();
        try {
            cstm = con.prepareCall("{CALL actualizar_servicio(?,?,?,?)}");
            cstm.setInt(1, servicio.getIdServicio());
            cstm.setString(2, servicio.getNombreServicio());
            cstm.setString(3, servicio.getDescripcion());
            cstm.setFloat(4, servicio.getPrecio());
            respuesta = cstm.executeUpdate();
            return respuesta;
            
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }finally{
            try {
                if(cstm != null){
                    cstm.close();
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
        return respuesta;
    }

    public void EliminarServicio(int idServicio) {
        try {
            con = clsConexion.getConnetion();
            cstm = con.prepareCall("{CALL eliminar_servicio(?)}");
            cstm.setInt(1, idServicio);
            cstm.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }finally{
            try {
                if(cstm !=null){
                    cstm.close();
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }
    
}
