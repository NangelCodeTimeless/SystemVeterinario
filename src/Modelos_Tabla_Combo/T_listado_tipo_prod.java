
package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.TipoProducto;
import java.util.ArrayList;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */
public class T_listado_tipo_prod extends AbstractTableModel{
    private final String[] columna = {"CODIGO","CATEGORIA","DESCRIPCION"};
    List<TipoProducto> filas;

    public T_listado_tipo_prod(List<TipoProducto> filas) {
        this.filas = new ArrayList<>(filas);
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
                nombreColumna = String.valueOf(filas.get(fila).getId_tipoproducto());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getTipo());
                break;
            case 2:
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
