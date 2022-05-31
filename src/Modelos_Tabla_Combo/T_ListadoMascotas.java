package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Mascota;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */

public class T_ListadoMascotas extends AbstractTableModel{
    private final String[] columna = {"CODIGO","NOMBRE","DNI","DUEÑO", "APELLIDO", "GENERO", "COLOR","RAZA","NACIMIENTO","CODTIPO","TIPO","ESTADO"};
    List<Mascota> filas;

    public T_ListadoMascotas(List<Mascota> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getId_mascota());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getNombre_m());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getCliente().getDNI());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getCliente().getNombre());
                break;
                
            case 4:
                nombreColumna = String.valueOf(filas.get(fila).getCliente().getApellidos());
                break;
            case 5:
                nombreColumna = String.valueOf(filas.get(fila).getGenero());
                break;
            case 6:
                nombreColumna = String.valueOf(filas.get(fila).getColor());
                break;
            case 7:
                nombreColumna = String.valueOf(filas.get(fila).getRaza());
                break;
            case 8:
                nombreColumna = String.valueOf(filas.get(fila).getFecha_nacimiento());
                break;
            case 9:
                nombreColumna = String.valueOf(filas.get(fila).getTipo_mas().getId_tipomascota());
                break;
            case 10:
                nombreColumna = String.valueOf(filas.get(fila).getTipo_mas().getDescripcion());
                break;
            case 11:
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
