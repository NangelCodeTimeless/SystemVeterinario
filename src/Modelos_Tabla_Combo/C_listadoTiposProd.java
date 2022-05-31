package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.TipoProducto;
import java.awt.event.ItemEvent;
import java.awt.event.ItemListener;
import java.util.ArrayList;
import java.util.List;
import javax.swing.AbstractListModel;
import javax.swing.ComboBoxModel;

/**
 *
 * @author Nahum
 */
public class C_listadoTiposProd extends AbstractListModel implements ComboBoxModel{
    List<TipoProducto> lista_tipo_prod = new ArrayList<>();
    TipoProducto tipo_prod;
    
    
    public C_listadoTiposProd(List<TipoProducto> listaTipos) {
        TipoProducto obj_tipo = new TipoProducto();
        obj_tipo.setTipo("Seleccione");
        listaTipos.add(0,obj_tipo);
        this.lista_tipo_prod = listaTipos;
    }
       
    @Override
    public int getSize() {
        return lista_tipo_prod.size();
    }

    @Override
    public Object getElementAt(int index) {
        return lista_tipo_prod.get(index).getTipo();
    }

    @Override
    public void setSelectedItem(Object anItem) {
        if(anItem!=null && lista_tipo_prod.size()>0 ){
            for(TipoProducto m:lista_tipo_prod){
                if(m.toString().equals(anItem.toString())){
                 tipo_prod = m;
                 break;
                }
            }        
        }
    }

    @Override
    public Object getSelectedItem() {
        return tipo_prod;
    }

}
