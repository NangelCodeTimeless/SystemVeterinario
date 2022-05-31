package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Tratamiento;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author NICOLAS
 */
public class T_ListadoTratamiento extends AbstractTableModel{
    private final String[] columna = {"CODIGO", "DNI PERSONAL", "NOMBRE", "APELLIDO", "TRATAMIENTO", "DIAGNOSTICO", "PROCESO", "TIEMPO"};
    List<Tratamiento> filas;

    public T_ListadoTratamiento(List<Tratamiento> filas) {
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
        
        switch (columna){
            case 0:
                nombreColumna = String.valueOf(filas.get(fila).getIdTratamiento());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getDniPersona());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getNombre());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getApellido());
                break;
            case 4:
                nombreColumna = String.valueOf(filas.get(fila).getTratamiento());
                break;
            case 5:
                nombreColumna = String.valueOf(filas.get(fila).getDiagnostico());
                break;
            case 6:
                nombreColumna = String.valueOf(filas.get(fila).getProceso());
                break;
            case 7:
                nombreColumna = String.valueOf(filas.get(fila).getTiempo());
                break;
        }
        return nombreColumna;
    }
    
     @Override
    public String getColumnName(int column) {
        return columna[column];
    }
    
}
