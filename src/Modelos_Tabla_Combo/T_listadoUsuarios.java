
package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Usuario;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */
public class T_listadoUsuarios extends AbstractTableModel{
    private final String[] columna = {"IDUSARIO","DNI","NOMBRE","USUARIO", "PASSWORD", "IDCARGO","CARGO","ESTADO"};
    List<Usuario> filas;

    public T_listadoUsuarios(List<Usuario> filas) {
        this.filas = filas;
    }

    @Override
    public int getRowCount() {
        return filas.size();
    }

    @Override
    public int getColumnCount() {
        return columna.length;
    }

    @Override
    public Object getValueAt(int fila, int columna) {
        String nombreColumna = null;

        switch (columna) {
            case 0:
                nombreColumna = String.valueOf(filas.get(fila).getId_usuario());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getDni_p());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getNombre());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getUsuario());
                break;
            case 4:
                nombreColumna = String.valueOf(filas.get(fila).getContrasenia());
                break;
            case 5:
                nombreColumna = String.valueOf(filas.get(fila).getId_tipoUsuario());
                break;
            case 6:
                nombreColumna = String.valueOf(filas.get(fila).getDes());
                break;
            case 7:
                nombreColumna = String.valueOf(filas.get(fila).isEstado());
                break;
            
        }
        return nombreColumna;
    }

    @Override
    public String getColumnName(int column) {
        return columna[column];
    }
}
