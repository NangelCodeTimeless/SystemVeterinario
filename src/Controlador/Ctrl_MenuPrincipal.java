package Controlador;

import GUI.Gui_Login;
import GUI.Gui_MenuPrincipal;
import Mapeos_Tablas_BD.Producto;
import ds.desktop.notify.DesktopNotify;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowEvent;
import java.awt.event.WindowListener;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JOptionPane;

/**
 *
 * @author MAX
 */
public final class Ctrl_MenuPrincipal implements ActionListener,WindowListener {
    Gui_MenuPrincipal principal;
    JMenu opciones;
    static String nomUsu;
    static String dniPersonal;
    static String nombrePersonal;
    static String apellidoPersonal;
    clsPanel mi_panel;
   

    public Ctrl_MenuPrincipal(Gui_MenuPrincipal menu) {
        principal = menu;
        eventos();
    }

    public void show() {
        principal.setTitle("Bienvenido al Sistema Veterinario señor(a) "+nomUsu);
        principal.setExtendedState(Gui_MenuPrincipal.MAXIMIZED_BOTH);
        /*Anular la funciones de cierre de la ventana*/
        principal.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
        mi_panel = new clsPanel(principal);
        principal.setContentPane(mi_panel);
        principal.setVisible(true);
    }
    

    public void eventos() {
        principal.Item_GestionUsuario.addActionListener(this);
        principal.Item_GestionPermisos.addActionListener(this);
        principal.Item_Listadopersonal.addActionListener(this);
        principal.Item_AgregarPersonal.addActionListener(this);
        principal.item_reg_prod.addActionListener(this);
        principal.item_list_prod.addActionListener(this);
        principal.btnHistoriasClinicas.addActionListener(this);
        principal.Item_Permisos.addActionListener(this);
        principal.item_reg_proveedor.addActionListener(this);
        principal.btnClientes.addActionListener(this);
        principal.Item_Conexion.addActionListener(this);
        principal.Item_cerrar_sesion.addActionListener(this);
        principal.item_list_proveedor.addActionListener(this);
        principal.addWindowListener(this);
        principal.btnMascotas.addActionListener(this);
        principal.item_reg_compra.addActionListener(this);
        principal.Item_salir.addActionListener(this);
        principal.item_list_compra_aprob.addActionListener(this);
        principal.item_list_gestConsul.addActionListener(this);
        principal.Item_ListarServicios.addActionListener(this);
        principal.Item_AgregarServicio.addActionListener(this);
        principal.Item_ListarTratamiento.addActionListener(this);
    }
    
    /*CONTENIDO DEL MENU DE OPCIONES*/
    @Override
    public void actionPerformed(ActionEvent evento) {
        
        
        if (evento.getSource() == principal.Item_cerrar_sesion) {
            Gui_Login interfaz_login = new Gui_Login();
            Ctrl_Login logeo = new Ctrl_Login(interfaz_login);
            principal.dispose();
            logeo.show();
        }
        
        if (evento.getSource() == principal.Item_salir) {
            int opcion = JOptionPane.showConfirmDialog(principal,"¿Desea salir del sistema?","CONFIRMACIÓN",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);
            if(opcion == 0){
                System.exit(0);
            }
        }
       
        if (evento.getSource() == principal.Item_ListarServicios){
            Ctrl_ListarServicio abrirservicios = new Ctrl_ListarServicio(principal);
            abrirservicios.show();
        }
        if (evento.getSource() == principal.Item_AgregarServicio){
            Ctrl_AgregarServicio abrirservicios = new Ctrl_AgregarServicio(principal);
            abrirservicios.IniciarInterfaz();
        }
        if (evento.getSource() == principal.Item_ListarTratamiento){
            Ctrl_ListarTratamiento abrirListarTratamiento= new Ctrl_ListarTratamiento(principal);
            Ctrl_ListarTratamiento.dniPersona = dniPersonal;
            Ctrl_ListarTratamiento.nombre = nombrePersonal;
            Ctrl_ListarTratamiento.apellido = apellidoPersonal;
            abrirListarTratamiento.IniciarInterfaz();
        }
    }
    
    public void salir_sistema(){System.exit(0);}

    @Override
    public void windowOpened(WindowEvent we) {}

    @Override
    public void windowClosing(WindowEvent we) { 
        int resp = JOptionPane.showConfirmDialog(principal, "¿Seguro desea salir del sistema?", "CONFIRMACION", JOptionPane.YES_NO_OPTION);
        if(resp == 0){salir_sistema();}
    }

    @Override
    public void windowClosed(WindowEvent we) {
    }

    @Override
    public void windowIconified(WindowEvent we) {
        
    }

    @Override
    public void windowDeiconified(WindowEvent we) {
    }

    @Override
    public void windowActivated(WindowEvent we) {
        
    }

    @Override
    public void windowDeactivated(WindowEvent we) {
        
    }

}
