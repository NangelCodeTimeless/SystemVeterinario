package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Consultas;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */
public class T_listadoConsultas extends AbstractTableModel{
    private final String[] columna = {"CODIGO","ID_MASCOTA","NOMBRE MASCOTA","MOTIVO","SINTOMAS","HORA","FECHA","USUARIO"};
    List<Consultas> filas;

    public T_listadoConsultas(List<Consultas> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getId_consulta());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getId_mascota());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getNombre_mascota());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getMotivo());
                break;
            case 4:
                nombreColumna = String.valueOf(filas.get(fila).getSintomas());
                break;
            case 5:
                nombreColumna = String.valueOf(filas.get(fila).getHora());
                break;
                
            case 6:
                nombreColumna = String.valueOf(filas.get(fila).getFecha());
                break;
                
            case 7:
                nombreColumna = String.valueOf(filas.get(fila).getUsuario());
                break;
        }
        return nombreColumna;
    }

    @Override
    public String getColumnName(int column) {
        return columna[column];
    }
}
