package Controlador;

import GUI.Gui_ListarServicio;
import GUI.Gui_MenuPrincipal;
import Logica.Logica_Servicio;
import Mapeos_Tablas_BD.Servicio;
import Modelos_Tabla_Combo.T_ListadoServicio;
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
public class Ctrl_ListarServicio implements ActionListener, MouseListener{
    private final Gui_ListarServicio gui;
    public static int idServicio;
    public static String nombreServicio = null;
    public static String descripcion = null;
    public static String precio = null;
    private final Gui_MenuPrincipal principal;
    Logica_Servicio servicioLogica;

    public Ctrl_ListarServicio(Gui_MenuPrincipal menuPrincipal) {
        principal = menuPrincipal;
        gui = new Gui_ListarServicio(menuPrincipal, true);
        servicioLogica = new Logica_Servicio();
        
        gui.btnAgregarServicio.addActionListener(this);
        gui.btnEditarServicio.addActionListener(this);
        gui.btnEliminarServicio.addActionListener(this);
        gui.btnBuscarMascota.addActionListener(this);
        gui.btnLimpiar.addActionListener(this);
        
        gui.Tabla_ListadoServicios.addMouseListener(this);
        
        gui.btnEditarServicio.setEnabled(false);
        gui.btnEliminarServicio.setEnabled(false);
        ListarServicios();
    }
    public void show(){
        gui.setTitle("Gestion de Servicios");
        gui.setResizable(false);
        gui.setVisible(true);
    }
    public void ListarServicios(){
        List<Servicio> obtenerServicio = servicioLogica.ListarServicio();
        List<Servicio> listaServicios =  new ArrayList<>();
        listaServicios.addAll(obtenerServicio);
        
        TableModel tabla = new T_ListadoServicio(listaServicios);
        gui.Tabla_ListadoServicios.setModel(tabla);
        gui.Tabla_ListadoServicios.getTableHeader().setReorderingAllowed(false);
    }
    
    public void Limpiar(){
        gui.txtBuscar.setText("");
        ListarServicios();
    }
    

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource() == gui.btnAgregarServicio){
            Ctrl_AgregarServicio servicio = new Ctrl_AgregarServicio(principal);
            Ctrl_AgregarServicio.nombreServicio = "";
            servicio.IniciarInterfaz();
            ListarServicios();
        }
        if(e.getSource() == gui.btnLimpiar){
            Limpiar();
            gui.btnAgregarServicio.setEnabled(true);
            gui.btnEditarServicio.setEnabled(false);
            gui.btnEliminarServicio.setEnabled(false);
        }
        if(e.getSource() == gui.btnEditarServicio){
            Ctrl_AgregarServicio editar =  new Ctrl_AgregarServicio(principal);
            Ctrl_AgregarServicio.idServicio = idServicio;
            Ctrl_AgregarServicio.nombreServicio = nombreServicio;
            Ctrl_AgregarServicio.descripcion = descripcion;
            Ctrl_AgregarServicio.precio = precio;
            editar.IniciarInterfaz();
            ListarServicios();
        }
        if (e.getSource() == gui.btnEliminarServicio) {
           int eleccion = JOptionPane.showConfirmDialog(null, "¿Realmente desea Eliminar este Registro?", "Confirmar salida", JOptionPane.YES_NO_OPTION, JOptionPane.QUESTION_MESSAGE); 
            if (eleccion == 0) {
                servicioLogica.EliminarServicio(idServicio);
                JOptionPane.showMessageDialog(gui, "ELIMINACIÓN CORRECTA");
                Limpiar();
            }
        }
        
    }

    @Override
    public void mouseClicked(MouseEvent e) {
        if(e.getSource().equals(gui.Tabla_ListadoServicios)){
            int fila = gui.Tabla_ListadoServicios.getSelectedRow();
         
            idServicio = Integer.parseInt(gui.Tabla_ListadoServicios.getValueAt(fila, 0).toString());
            nombreServicio = gui.Tabla_ListadoServicios.getValueAt(fila, 1).toString();
            descripcion = gui.Tabla_ListadoServicios.getValueAt(fila, 2).toString();
            precio = gui.Tabla_ListadoServicios.getValueAt(fila, 3).toString();
            
            gui.btnAgregarServicio.setEnabled(false);
            gui.btnEditarServicio.setEnabled(true);
            gui.btnEliminarServicio.setEnabled(true);
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
