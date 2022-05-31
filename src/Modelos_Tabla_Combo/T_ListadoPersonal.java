package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Personal;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author MAX
 */
public class T_ListadoPersonal extends AbstractTableModel {

    private final String[] columna = {"DNI", "NOMBRE", "APELLIDOS", "NACIMIENTO", "TELEFONO", "DIRECCION", "SEXO"};

    List<Personal> filas;

    public T_ListadoPersonal(List<Personal> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getDNI_P());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getNombre());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getApellidos());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getFecha_Nacimiento());
                break;
            case 4:
                nombreColumna = String.valueOf(filas.get(fila).getTelefono());
                break;
            case 5:
                nombreColumna = String.valueOf(filas.get(fila).getDireccion());
                break;
                
            case 6:
                nombreColumna = String.valueOf(filas.get(fila).getSexo());
                break;
            
        }
        return nombreColumna;
    }

    @Override
    public String getColumnName(int column) {
        return columna[column];
    }
}
