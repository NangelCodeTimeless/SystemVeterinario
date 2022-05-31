package Logica;

import DAO.DAO_Tratamiento;
import DAO.ITratamiento;
import Mapeos_Tablas_BD.Tratamiento;
import java.util.List;

/**
 *
 * @author NICOLAS
 */
public class Logica_Tratamiento implements ITratamiento{
    private final DAO_Tratamiento tratamientoDao = new DAO_Tratamiento();

    @Override
    public List<Tratamiento> ListarTratamiento() {
        return tratamientoDao.ListarTratamiento();
    }

    @Override
    public int AgregarTratamiento(Tratamiento tratamiento) {
        return tratamientoDao.AgregarTratamiento(tratamiento);
    }

    @Override
    public int ModificarTratamiento(Tratamiento tratamiento) {
        return tratamientoDao.ModificarTratamiento(tratamiento);
    }

    @Override
    public void EliminarTratamiento(int idTratamiento) {
        tratamientoDao.EliminarTratamiento(idTratamiento);
    }
    
}
