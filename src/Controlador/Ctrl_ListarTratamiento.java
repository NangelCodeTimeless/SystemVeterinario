package Controlador;

import GUI.Gui_ListarTratamientos;
import GUI.Gui_MenuPrincipal;
import Logica.Logica_Tratamiento;
import Mapeos_Tablas_BD.Tratamiento;
import Modelos_Tabla_Combo.T_ListadoTratamiento;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import javax.swing.table.TableModel;

/**
 *
 * @author NICOLAS
 */
public class Ctrl_ListarTratamiento implements ActionListener, MouseListener{
    private final Gui_MenuPrincipal principal;
    private final Gui_ListarTratamientos gui;
    
    public static int idTratamiento;
    public static String dniPersona = null;
    public static String nombre = null;
    public static String apellido = null;
    public static String tratamiento = null;
    public static String diagnostico = null;
    public static String proceso = null;
    public static String tiempo = null;
    
    Logica_Tratamiento tratamientoLogica;

    public Ctrl_ListarTratamiento(Gui_MenuPrincipal menuPrincipal) {
        principal = menuPrincipal;
        gui = new Gui_ListarTratamientos(menuPrincipal, true);
        tratamientoLogica =  new Logica_Tratamiento();
        
        gui.btnAgregarTratamiento.addActionListener(this);
        gui.btnEditarTratamiento.addActionListener(this);
        gui.btnEliminarTratamiento.addActionListener(this);
        gui.btnLimpiarTratamiento.addActionListener(this);
        gui.btnBuscarTratamiento.addActionListener(this);
        
        gui.Tabla_ListarTratamiento.setDefaultRenderer(Object.class, new clsRenderizarCeldasTablas());
        gui.Tabla_ListarTratamiento.addMouseListener(this);
        
        gui.btnEditarTratamiento.setEnabled(false);
        gui.btnEliminarTratamiento.setEnabled(false);
        
        ListarTratamientos();
    }
    
    public void IniciarInterfaz(){
        gui.setTitle("Gestion de Tratamientos");
        gui.lblNombre.setText(dniPersona+" "+nombre+" "+apellido);
        gui.setResizable(false);
        gui.setVisible(true);
    }
    
    public void ListarTratamientos(){
        List<Tratamiento> obtenerTratamiento = tratamientoLogica.ListarTratamiento();
        List<Tratamiento> listaTratamientos = new ArrayList<>();
        listaTratamientos.addAll(obtenerTratamiento);
        
        TableModel tabla =  new T_ListadoTratamiento(listaTratamientos);
        
        gui.Tabla_ListarTratamiento.setModel(tabla);
        gui.Tabla_ListarTratamiento.getTableHeader().setReorderingAllowed(false);
        
        gui.Tabla_ListarTratamiento.getColumnModel().getColumn(1).setMaxWidth(0);
        gui.Tabla_ListarTratamiento.getColumnModel().getColumn(1).setMinWidth(0);
        gui.Tabla_ListarTratamiento.getTableHeader().getColumnModel().getColumn(1).setMaxWidth(0);
        gui.Tabla_ListarTratamiento.getTableHeader().getColumnModel().getColumn(1).setMinWidth(0);
        
        gui.Tabla_ListarTratamiento.getColumnModel().getColumn(0).setMaxWidth(0);
        gui.Tabla_ListarTratamiento.getColumnModel().getColumn(0).setMinWidth(0);
        gui.Tabla_ListarTratamiento.getTableHeader().getColumnModel().getColumn(0).setMaxWidth(0);
        gui.Tabla_ListarTratamiento.getTableHeader().getColumnModel().getColumn(0).setMinWidth(0);
    }
    
    public void Limpiar(){
        gui.txtBuscar.setText(" ");
        ListarTratamientos();
    }
    

    @Override
    public void actionPerformed(ActionEvent e) {
//        if (e.getSource() == gui.btnAgregarTratamiento) {
//            Ctrl_AgregarTratamiento tratamiento = new Ctrl_AgregarTratamiento(principal);
//            Ctrl_AgregarTratamiento.tratamiento=" ";
//            Ctrl_AgregarTratamiento.dniPersona = dniPersona;
//            Ctrl_AgregarTratamiento.nombre = nombre;
//            Ctrl_AgregarTratamiento.apellido = apellido;
//            tratamiento.IniciarInterfaz();
//            ListarTratamientos();
//        }
//        if (e.getSource() == gui.btnLimpiarTratamiento) {
//            Limpiar();
//            gui.btnAgregarTratamiento.setEnabled(true);
//            gui.btnEditarTratamiento.setEnabled(false);
//            gui.btnEliminarTratamiento.setEnabled(false);
//        }
//        if (e.getSource() == gui.btnEditarTratamiento) {
//            Ctrl_AgregarTratamiento editar = new Ctrl_AgregarTratamiento(principal);
//            Ctrl_AgregarTratamiento.idTratamiento = idTratamiento;
//            Ctrl_AgregarTratamiento.tratamiento = tratamiento;
//            Ctrl_AgregarTratamiento.diagnostico = diagnostico;
//            Ctrl_AgregarTratamiento.proceso = proceso;
//            Ctrl_AgregarTratamiento.tiempo = tiempo;
//            editar.IniciarInterfaz();
//            ListarTratamientos();
//        }
        if (e.getSource() == gui.btnEliminarTratamiento) {
            int eleccion = JOptionPane.showConfirmDialog(null, "¿Realmente desea Eliminar este Registro?", "Confirmar salida", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE); 
            if (eleccion == 0) {
                tratamientoLogica.EliminarTratamiento(idTratamiento);
                JOptionPane.showMessageDialog(gui, "ELIMINACIÓN CORRECTA");
                Limpiar();
            }
        }
    }

    @Override
    public void mouseClicked(MouseEvent e) {
        if (e.getSource().equals(gui.Tabla_ListarTratamiento)) {
            int fila = gui.Tabla_ListarTratamiento.getSelectedRow();
            
            idTratamiento = Integer.parseInt(gui.Tabla_ListarTratamiento.getValueAt(fila, 0).toString());
            dniPersona = gui.Tabla_ListarTratamiento.getValueAt(fila, 1).toString();
            nombre = gui.Tabla_ListarTratamiento.getValueAt(fila, 2).toString();
            apellido = gui.Tabla_ListarTratamiento.getValueAt(fila, 3).toString();
            tratamiento = gui.Tabla_ListarTratamiento.getValueAt(fila, 4).toString();
            diagnostico = gui.Tabla_ListarTratamiento.getValueAt(fila, 5).toString();
            proceso = gui.Tabla_ListarTratamiento.getValueAt(fila, 6).toString();
            tiempo = gui.Tabla_ListarTratamiento.getValueAt(fila, 7).toString();
            
            gui.btnAgregarTratamiento.setEnabled(false);
            gui.btnEditarTratamiento.setEnabled(true);
            gui.btnEliminarTratamiento.setEnabled(true);
        }
    }

    @Override
    public void mousePressed(MouseEvent e) {}

    @Override
    public void mouseReleased(MouseEvent e) {}

    @Override
    public void mouseEntered(MouseEvent e) {}

    @Override
    public void mouseExited(MouseEvent e) {}
    
}
