package Modelos_Tabla_Combo;

import Mapeos_Tablas_BD.TipoMascota;
import java.util.ArrayList;
import java.util.List;
import javax.swing.AbstractListModel;
import javax.swing.ComboBoxModel;

/**
 *
 * @author Nahum
 */
public class C_listadoTipoMascotas extends AbstractListModel implements ComboBoxModel{
    List<TipoMascota> lista = new ArrayList<>();
    TipoMascota tipo_Mascota;
    
    
    public C_listadoTipoMascotas(List<TipoMascota> listaMasc) {
        TipoMascota obj = new TipoMascota();
        obj.setDescripcion("Seleccione");
        listaMasc.add(0,obj);
        this.lista = listaMasc;
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
            for(TipoMascota m:lista){
                if(m.toString().equals(anItem.toString())){
                 tipo_Mascota = m;
                 break;
                }
            }        
        }
    }

    @Override
    public Object getSelectedItem() {
        return tipo_Mascota;
    }
}
