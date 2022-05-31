package Controlador;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import javax.swing.JComboBox;
import javax.swing.JDialog;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.ListSelectionModel;

/**
 *
 * @author Nahum 
 */
public abstract class clsMetodos {
    public void personalizar_tabla_usuarios(JTable usuario){
        usuario.getTableHeader().setReorderingAllowed(false); //  permite o deniega la organizaxcion de las cabeceras
        usuario.getTableHeader().setResizingAllowed(false); // Establece si el usuario puede cambiar el tamaño de las columnas arrastrando entre los encabezados
        usuario.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);//Sólo se podrá seleccionar un intervalo de filas 
        usuario.getColumnModel().getColumn(0).setMaxWidth(0);
        usuario.getColumnModel().getColumn(0).setMinWidth(0);
        usuario.getColumnModel().getColumn(0).setPreferredWidth(0);
        
        usuario.getColumnModel().getColumn(2).setMinWidth(0);
        usuario.getColumnModel().getColumn(2).setPreferredWidth(0); usuario.getColumnModel().getColumn(2).setMaxWidth(0);
       
        usuario.getColumnModel().getColumn(5).setMaxWidth(0);
        usuario.getColumnModel().getColumn(5).setMinWidth(0);
        usuario.getColumnModel().getColumn(5).setPreferredWidth(0);
        
        usuario.getColumnModel().getColumn(7).setMaxWidth(0);
        usuario.getColumnModel().getColumn(7).setMinWidth(0);
        usuario.getColumnModel().getColumn(7).setPreferredWidth(0);
    }
    
    public void personlizar_tabla_tipo_usuario(JTable tipo_usuario){
        tipo_usuario.getTableHeader().setReorderingAllowed(false);
        tipo_usuario.getTableHeader().setResizingAllowed(false);
        tipo_usuario.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
    }
    
    public void personlizar_tabla_personal(JTable personal){
        personal.getTableHeader().setReorderingAllowed(false);
        personal.getTableHeader().setResizingAllowed(false);
        personal.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
    }
    
    public void personalizar_tablas(JTable tabla){
        tabla.getTableHeader().setReorderingAllowed(false);
        tabla.getTableHeader().setResizingAllowed(false);
        tabla.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
    }
    
     public void personalizar_tablas_producto(JTable prod){
        prod.getTableHeader().setReorderingAllowed(false);
        prod.getTableHeader().setResizingAllowed(false);
        prod.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        prod.getColumnModel().getColumn(0).setMaxWidth(0);
        prod.getColumnModel().getColumn(0).setMinWidth(0);
        prod.getColumnModel().getColumn(0).setPreferredWidth(0);
        
        prod.getColumnModel().getColumn(2).setMaxWidth(0);
        prod.getColumnModel().getColumn(2).setMinWidth(0);
        prod.getColumnModel().getColumn(2).setPreferredWidth(0);
        
        prod.getColumnModel().getColumn(5).setPreferredWidth(20);// modificar el ancho de la columna de stock
        prod.getColumnModel().getColumn(6).setPreferredWidth(20);
        
        prod.getColumnModel().getColumn(7).setMaxWidth(0);
        prod.getColumnModel().getColumn(7).setMinWidth(0);
        prod.getColumnModel().getColumn(7).setPreferredWidth(0);
        
        prod.getColumnModel().getColumn(8).setMaxWidth(0);
        prod.getColumnModel().getColumn(8).setMinWidth(0);
        prod.getColumnModel().getColumn(8).setPreferredWidth(0);
        
        prod.getColumnModel().getColumn(11).setMaxWidth(0);
        prod.getColumnModel().getColumn(11).setMinWidth(0);
        prod.getColumnModel().getColumn(11).setPreferredWidth(0);
    }
     
    public String convertir_date_string(Date d) {
        String fecha = "";
         if(d != null){
            SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
            fecha = formato.format(d);
        }
        return fecha;
    }
     
    public Date convertir_string_date(String fecha){
        SimpleDateFormat formato = new SimpleDateFormat("yyyy-MM-dd");
        Date fechaE;
        try {
            fechaE = formato.parse(fecha);
            return fechaE;
        } catch (ParseException ex) {
            return null;
        }
    } 
    
    public int calcular_year(int year, int mes, int dia){
        Calendar hoy = Calendar.getInstance();
        int ry = hoy.get(Calendar.YEAR) - year;
        int rm = hoy.get(Calendar.MONTH) - mes;
        int rd = hoy.get(Calendar.DAY_OF_MONTH) - dia;
        if(rm <0 || (rm == 0 && rd<0)){
            ry = ry - 1;
        }
        return ry;
    }
    
    public void mostrar(JDialog ventana, String mensaje) {
        JOptionPane.showMessageDialog(ventana, mensaje, "MENSAJE", JOptionPane.INFORMATION_MESSAGE);
    }

    public void mostrar(JDialog ventana ,String mensaje, int icon) {
        JOptionPane.showMessageDialog(ventana, mensaje, "MENSAJE", icon);
    }
    
    public boolean validar_apellidos(String ap){
        for (int i = 0; i < ap.length(); i++) {
            if(ap.charAt(i)== 32){
                return true;
            }
        }
        return false;
    }
    
    public void buscar_en_combo(JComboBox combo, String cadena){
        for (int i = 0; i < combo.getModel().getSize(); i++) {
            String valor = (String) combo.getModel().getElementAt(i);
           if(valor.equals(cadena)){
               combo.setSelectedItem(valor);
           }
        }
    }
     
//    public void keyReleased(KeyEvent ke) {
//        if(ke.getKeyCode() == KeyEvent.VK_BACK_SPACE){
//           if(interfaz_prod.txtBuscarProd.getText().length() >= 0){
//               listar_prod();
//           }
//        }
//    }
    
//     public void itemStateChanged(ItemEvent evento) {
//        if (evento.getSource()== IU_producto.cbTipoProd)
//        {
//            if (evento.getStateChange() == ItemEvent.SELECTED) {
//            TipoProducto objecto_prod = (TipoProducto) IU_producto.cbTipoProd.getSelectedItem();
//            ident_tipo_prod = objecto_prod.getId_tipoproducto();
//            }
//        }
//    }
     
    
    public void personalizar_tabla_mascota(JTable mascota){
        mascota.getTableHeader().setReorderingAllowed(false); //  permite o deniega la organizaxcion de las cabeceras
        mascota.getTableHeader().setResizingAllowed(false);
        mascota.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);//Sólo se podrá seleccionar un intervalo de filas 
            
        mascota.getColumnModel().getColumn(2).setMaxWidth(0);
        mascota.getColumnModel().getColumn(2).setMinWidth(0);
        mascota.getColumnModel().getColumn(2).setPreferredWidth(0);
            
        mascota.getColumnModel().getColumn(4).setMaxWidth(0);
        mascota.getColumnModel().getColumn(4).setMinWidth(0);
        mascota.getColumnModel().getColumn(4).setPreferredWidth(0);
        
        mascota.getColumnModel().getColumn(9).setMaxWidth(0);
        mascota.getColumnModel().getColumn(9).setMinWidth(0);
        mascota.getColumnModel().getColumn(9).setPreferredWidth(0);
        
        mascota.getColumnModel().getColumn(11).setMaxWidth(0);
        mascota.getColumnModel().getColumn(11).setMinWidth(0);
        mascota.getColumnModel().getColumn(11).setPreferredWidth(0);
    }
    
      public void personalizar_tabla_proveedores(JTable proveedores){
        proveedores.getTableHeader().setReorderingAllowed(false); //  permite o deniega la organizaxcion de las cabeceras
        proveedores.getTableHeader().setResizingAllowed(false);
        proveedores.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);//Sólo se podrá seleccionar un intervalo de filas 
            
        proveedores.getColumnModel().getColumn(0).setMaxWidth(0);
        proveedores.getColumnModel().getColumn(0).setMinWidth(0);
        proveedores.getColumnModel().getColumn(0).setPreferredWidth(0);
            
        proveedores.getColumnModel().getColumn(6).setMaxWidth(0);
        proveedores.getColumnModel().getColumn(6).setMinWidth(0);
        proveedores.getColumnModel().getColumn(6).setPreferredWidth(0);
    }
      
//      Pattern expresion = Pattern.compile("[0-9]*");
//       Matcher coincidencia = expresion.matcher(txtacadena.getText());
//       if(coincidencia.matches()){
//           JOptionPane.showMessageDialog(this, "si");
//       }else{
//           JOptionPane.showMessageDialog(this, "no");
//       }
      
      public void personalizar_tabla_consultas(JTable consultas){
        consultas.getTableHeader().setReorderingAllowed(false); //  permite o deniega la organizaxcion de las cabeceras
        consultas.getTableHeader().setResizingAllowed(false); // Establece si el usuario puede cambiar el tamaño de las columnas arrastrando entre los encabezados
        consultas.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);//Sólo se podrá seleccionar un intervalo de filas 
        consultas.getColumnModel().getColumn(1).setMaxWidth(0);
        consultas.getColumnModel().getColumn(1).setMinWidth(0);
        consultas.getColumnModel().getColumn(1).setPreferredWidth(0);
      


    }
}
