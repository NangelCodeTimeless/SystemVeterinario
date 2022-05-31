package Logica;

import DAO.DAO_Servicio;
import Mapeos_Tablas_BD.Servicio;
import java.util.List;

/**
 *
 * @author NICOLAS
 */
public class Logica_Servicio{
    private final DAO_Servicio servicioDao = new DAO_Servicio();

    public List<Servicio> ListarServicio() {
        return servicioDao.ListarServicio();
    }

    public int AgregarServicio(Servicio servicio) {
        return servicioDao.AgregarServicio(servicio);
    }

    public int ModificarServicio(Servicio servicio) {
        return servicioDao.ModificarServicio(servicio);
    }

    public void EliminarServicio(int idServicio) {
        servicioDao.EliminarServicio(idServicio);
    }
    
}
