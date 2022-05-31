
package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Compra;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */
public class T_listasCompras extends AbstractTableModel{
    private final String[] columna = {"IDCOMPRA","USUARIO","NOMBRE","APELLIDO","TOTAL","RAZON SOCIAL","RUC","ENTREGA","ESTADO"};
    List<Compra> filas;

    public T_listasCompras(List<Compra> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getId_comp());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getUsuario());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getNombre_personal());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getApellido());
                break;
            case 4:
                nombreColumna = String.valueOf(filas.get(fila).getTotal());
                break;
            case 5:
                nombreColumna = String.valueOf(filas.get(fila).getRazon_social());
                break;
            case 6:
                nombreColumna = String.valueOf(filas.get(fila).getRuc());
                break;
            case 7:
                nombreColumna = String.valueOf(filas.get(fila).getFecha_entr());
                break;
            case 8:
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
