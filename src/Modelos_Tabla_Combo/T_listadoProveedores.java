package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.Proveedor;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */
public class T_listadoProveedores  extends AbstractTableModel{
    private final String[] columna = {"CODIGO","RAZON SOCIAL","RUC","TELEFONO", "DIRECCIÓN", "EMAIL","ESTADO"};
    List<Proveedor> filas;

    public T_listadoProveedores(List<Proveedor> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getId_prov());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getRazon_social());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getRuc());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getTelefono());
                break;
            case 4:
                nombreColumna = String.valueOf(filas.get(fila).getDireccion());
                break;
            case 5:
                nombreColumna = String.valueOf(filas.get(fila).getEmail());
                break;
            case 6:
                if(filas.get(fila).isEstado() == true){
                    nombreColumna = "Habilitado";
                }else{
                    nombreColumna = "Deshabilitado";
                }
                break;
        }
        return nombreColumna;
    }

    @Override
    public String getColumnName(int column) {
        return columna[column];
    }
}
