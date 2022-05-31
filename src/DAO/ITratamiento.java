package DAO;

import Mapeos_Tablas_BD.Tratamiento;
import java.util.List;

/**
 *
 * @author NICOLAS
 */
public interface ITratamiento {
    List<Tratamiento> ListarTratamiento();
    int AgregarTratamiento(Tratamiento tratamiento);
    int ModificarTratamiento(Tratamiento tratamiento);
    void EliminarTratamiento(int idTratamiento);
}
