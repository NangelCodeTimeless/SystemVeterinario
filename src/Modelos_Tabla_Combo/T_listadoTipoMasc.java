package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.TipoMascota;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */
public class T_listadoTipoMasc extends AbstractTableModel{
    private final String[] columna = {"CODIGO","DESCRIPCIÓN"};
    List<TipoMascota> filas;

    public T_listadoTipoMasc(List<TipoMascota> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getId_tipomascota());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getDescripcion());
                break;
        }
        return nombreColumna;
    }

    @Override
    public String getColumnName(int column) {
        return columna[column];
    }
}
