package DAO;

import Mapeos_Tablas_BD.Tratamiento;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author NICOLAS
 */
public class DAO_Tratamiento implements ITratamiento{
    Connection con = null;
    CallableStatement cstm = null;
    PreparedStatement pstm = null;
    ResultSet rs = null;

    @Override
    public List<Tratamiento> ListarTratamiento() {
        List<Tratamiento> listaTratamiento;
        
        try{
            con = clsConexion.getConnetion();
            cstm = con.prepareCall("select * from listar_tratamiento()");
            rs = cstm.executeQuery();
            listaTratamiento = new ArrayList<>();
            Tratamiento tratamiento;
            
            while(rs.next()){
                tratamiento = new Tratamiento();
                tratamiento.setIdTratamiento(rs.getInt(1));
                tratamiento.setDniPersona(rs.getString(2));
                tratamiento.setNombre(rs.getString(3));
                tratamiento.setApellido(rs.getString(4));
                tratamiento.setTratamiento(rs.getString(5));
                tratamiento.setDiagnostico(rs.getString(6));
                tratamiento.setProceso(rs.getString(7));
                tratamiento.setTiempo(rs.getString(8));
                
                listaTratamiento.add(tratamiento);
            }
            return listaTratamiento;
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

    @Override
    public int AgregarTratamiento(Tratamiento tratamiento) {
        int respuesta = -1;
        con = clsConexion.getConnetion();
        try {
            cstm = con.prepareCall("{call agregar_tratamiento(?, ?, ?, ?, ?)}");
            cstm.setString(1,tratamiento.getDniPersona());
            cstm.setString(2, tratamiento.getTratamiento());
            cstm.setString(3, tratamiento.getDiagnostico());
            cstm.setString(4, tratamiento.getProceso());
            cstm.setString(5, tratamiento.getTiempo());
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

    @Override
    public int ModificarTratamiento(Tratamiento tratamiento) {
        int respuesta = -1;
        con = clsConexion.getConnetion();
        try {
            cstm = con.prepareCall("{call modificar_tratamiento(?, ?, ?, ?, ?)}");
            cstm.setInt(1,tratamiento.getIdTratamiento());
            cstm.setString(2, tratamiento.getTratamiento());
            cstm.setString(3, tratamiento.getDiagnostico());
            cstm.setString(4, tratamiento.getProceso());
            cstm.setString(5, tratamiento.getTiempo());
            respuesta = cstm.executeUpdate();
            return respuesta;
        } catch (SQLException e) {
            return respuesta; 
            //System.out.println(e.getMessage());
        }finally{
            try {
                if (cstm != null){
                    cstm.close();
                }
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }

    @Override
    public void EliminarTratamiento(int idTratamiento) {
        try {
            con = clsConexion.getConnetion();
            cstm = con.prepareCall("{CALL eliminar_tratamiento(?)}");
            cstm.setInt(1, idTratamiento);
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
