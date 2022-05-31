package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.TipoUsuario;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */
public class T_listadoTiposUsuarios extends AbstractTableModel{
    private final String[] columna = {"CODIGO","DESCRIPCION"};
    List<TipoUsuario> filas;

    public T_listadoTiposUsuarios(List<TipoUsuario> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getId_tipousuario());
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
