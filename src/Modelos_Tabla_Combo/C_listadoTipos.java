package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.TipoUsuario;
import java.util.ArrayList;
import java.util.List;
import javax.swing.AbstractListModel;
import javax.swing.ComboBoxModel;

/**
 *
 * @author Nahum
 */
public class C_listadoTipos extends AbstractListModel implements ComboBoxModel{
    List<TipoUsuario> lista = new ArrayList<>();
    TipoUsuario tipo_usuario;
    
    
    public C_listadoTipos(List<TipoUsuario> listaCargos) {
        TipoUsuario obj = new TipoUsuario();
        obj.setDescripcion("Seleccione");
        listaCargos.add(0,obj);
        this.lista = listaCargos;
    }
       
    @Override
    public int getSize() {
        return lista.size();
    }

    @Override
    public Object getElementAt(int index) {
        return lista.get(index).getDescripcion();
    }

    @Override
    public void setSelectedItem(Object anItem) {
        if(anItem!=null && lista.size()>0 ){
            for(TipoUsuario m:lista){
                if(m.toString().equals(anItem.toString())){
                 tipo_usuario = m;
                 break;
                }
            }        
        }
    }

    @Override
    public Object getSelectedItem() {
        return tipo_usuario;
    }
}
