
package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Cliente;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author MAX
 */
public class T_ListadoCliente extends AbstractTableModel {
       private final String[] columna = {"DNI", "NOMBRE", "APELLIDOS", "DIRECCION", "TELEFONO", "SEXO", "NACIMIENTO","CORREO"};

    List<Cliente> filas;

    public T_ListadoCliente(List<Cliente> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getDNI());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getNombre());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getApellidos());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getDireccion());
                break;
            case 4:
                nombreColumna = String.valueOf(filas.get(fila).getTelefono());
                break;
            case 5:
                nombreColumna = String.valueOf(filas.get(fila).getSexo());
                break;
                
            case 6:
                nombreColumna = String.valueOf(filas.get(fila).getFecha_Nacimiento());
                break;
                
            case 7:
                nombreColumna = String.valueOf(filas.get(fila).getCorreo());
                break;
            
        }
        return nombreColumna;
    }

    @Override
    public String getColumnName(int column) {
        return columna[column];
    }
}
