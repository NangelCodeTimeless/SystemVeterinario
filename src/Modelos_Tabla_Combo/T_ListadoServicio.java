package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Servicio;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author NICOLAS
 */
public class T_ListadoServicio extends AbstractTableModel{
    private final String[] columna = {"CODIGO", "NOMBRE SERVICIO", "DESCRIPCION", "PRECIO"};
    List<Servicio> filas;
    
    public T_ListadoServicio(List<Servicio> filas){
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
                nombreColumna = String.valueOf(filas.get(fila).getIdServicio());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getNombreServicio());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getDescripcion());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getPrecio());
                break;
        }
        return nombreColumna;
    }
    
    @Override
    public String getColumnName(int column) {
        return columna[column];
    }
    
}
