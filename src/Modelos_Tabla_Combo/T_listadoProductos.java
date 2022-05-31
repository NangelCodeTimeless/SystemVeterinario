package Modelos_Tabla_Combo;
import Mapeos_Tablas_BD.Producto;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Nahum
 */
public class T_listadoProductos extends AbstractTableModel{
    private final String[] columna = {"CODIGO","NOMBRE","DESCRIPCION","PRECIO COMPRA","PRECIO VENTA","STOCK","IGV", "CODIG_TIPO", "CATEGORIA","REGISTRO","VENCIMIENTO","ESTADO"};
    List<Producto> filas;

    public T_listadoProductos(List<Producto> filas) {
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
                nombreColumna = String.valueOf(filas.get(fila).getId_producto());
                break;
            case 1:
                nombreColumna = String.valueOf(filas.get(fila).getNombre());
                break;
            case 2:
                nombreColumna = String.valueOf(filas.get(fila).getDescripcion());
                break;
            case 3:
                nombreColumna = String.valueOf(filas.get(fila).getPrecio_compra());
                break;
            case 4:
                nombreColumna = String.valueOf(filas.get(fila).getPrecio_venta());
                break;
                
            case 5:
                nombreColumna = String.valueOf(filas.get(fila).getStock());
                break;
                
            case 6:
                nombreColumna = String.valueOf(filas.get(fila).getIgv());
                break;
                
            case 7:
                nombreColumna = String.valueOf(filas.get(fila).getId_tipoproducto());
                break;
                
            case 8:
                nombreColumna = String.valueOf(filas.get(fila).getTipo());
                break;
            case 9:
                nombreColumna = String.valueOf(filas.get(fila).getFecha_registro());
                break;
            case 10:
                if (filas.get(fila).getFecha_vencimiento() == null) {
                    nombreColumna = "no tiene";
                } else {
                    nombreColumna = String.valueOf(filas.get(fila).getFecha_vencimiento());
                }
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
