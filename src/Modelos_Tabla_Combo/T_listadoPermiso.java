package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Permiso;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */
public class T_listadoPermiso extends AbstractTableModel{
    private final String[] columna = {"CODIGO","MODULO","DESCRIPCION","ESTADO"};
    List<Permiso> filas;

    public T_listadoPermiso(List<Permiso> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getId_permiso());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getModulo());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getDescripcion());
                break;
            case 3:
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
