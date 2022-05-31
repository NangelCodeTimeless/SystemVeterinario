package Controlador;

import GUI.Gui_AgregarServicios;
import GUI.Gui_MenuPrincipal;
import Logica.Logica_Servicio;
import Mapeos_Tablas_BD.Servicio;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;

/**
 *
 * @author NICOLAS
 */
public class Ctrl_AgregarServicio implements ActionListener{
    Gui_AgregarServicios gui;
    Gui_MenuPrincipal menuPrincipal;
    Logica_Servicio servicioLogica;
    public static int idServicio;
    public static String nombreServicio = "";
    public static String descripcion = "";
    public static String precio ;

    public Ctrl_AgregarServicio(Gui_MenuPrincipal menuPrincipal) {
        gui = new Gui_AgregarServicios(menuPrincipal, true);
        servicioLogica = new Logica_Servicio();
    }
    
    public void IniciarInterfaz(){
        if("".equals(nombreServicio)){
            gui.setTitle("Registro de Servicios");
            escuchadores();
            gui.setResizable(false);
            gui.setVisible(true);
        } else {
            gui. setTitle("Actualizacion de Servicios");
            escuchadores();
            Ctrl_ListarServicio serv = new Ctrl_ListarServicio(menuPrincipal);
            serv.idServicio = idServicio;
            gui.btnRegistrarServicio.setText("Actualizar");
            gui.txtNombreServicio.setText(nombreServicio);
            gui.txtDescripcion.setText(descripcion);
            gui.txtPrecioServicio.setText(precio);
            gui.setVisible(true);
        }
    }
    
    public void escuchadores() {
        gui.btnRegistrarServicio.addActionListener(this);
        gui.btnCancelar.addActionListener(this);
    }

    public void mostrar(String mensaje) {
        JOptionPane.showMessageDialog(gui, mensaje, "INFORMACIÓN", JOptionPane.INFORMATION_MESSAGE);
    }

    public void mostrar(String mensaje, int icon) {
        JOptionPane.showMessageDialog(gui, mensaje, "INFORMACIÓN", icon);
    }

    
    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getActionCommand().equals("Registrar")) {
            if (gui.txtNombreServicio.getText().isEmpty()) {
                mostrar("Porfavor Ingrese El nombre del Servicio");
            }else{
                if (gui.txtDescripcion.getText().isEmpty()) {
                    mostrar("Porfavor Ingrese Una Descripcion");
                } else {
                    if (gui.txtPrecioServicio.getText().isEmpty()) {
                        mostrar("Porfavor Ingrese Un Precio");
                    } else {
                        String nombre= gui.txtNombreServicio.getText().trim();
                        String descri=  gui.txtDescripcion.getText().trim();
                        String prec = gui.txtPrecioServicio.getText().trim();
                        boolean estado = true;
                        
                        Servicio objeto = new Servicio(nombre, descri, Float.parseFloat(prec), estado);
                        int respuesta = servicioLogica.AgregarServicio(objeto);
                        if (respuesta == -1) {
                            mostrar("No se Puede registrar Este servicio", JOptionPane.ERROR_MESSAGE);
                        } else {
                            mostrar("Servicio REGISTRADO CORRECTAMENTE", JOptionPane.INFORMATION_MESSAGE);
                            gui.dispose();
                        }
                    }
                }
            }
        }
        if (e.getActionCommand().equals("Actualizar")) {
            if (gui.txtNombreServicio.getText().isEmpty()) {
                mostrar("Porfavor Ingrese El nombre del Servicio");
            }else{
                if (gui.txtDescripcion.getText().isEmpty()) {
                    mostrar("Porfavor Ingrese Una Descripcion");
                } else {
                    if (gui.txtPrecioServicio.getText().isEmpty()) {
                        mostrar("Porfavor Ingrese Un Precio");
                    } else {
                        //String idServicio = idServicio
                        String nombre= gui.txtNombreServicio.getText().trim();
                        String descri=  gui.txtDescripcion.getText().trim();
                        String prec = gui.txtPrecioServicio.getText().trim();
                        
                        Servicio objeto = new Servicio(idServicio, nombre, descri, Float.parseFloat(prec));
                        int respuesta = servicioLogica.ModificarServicio(objeto);
                        if (respuesta == -1) {
                            mostrar("Este Servicio ya está registrado", JOptionPane.ERROR_MESSAGE);
                        } else {
                            mostrar("Servicio REGISTRADO CORRECTAMENTE", JOptionPane.INFORMATION_MESSAGE);
                            gui.dispose();
                        }
                    }
                }
            }
        }
        if (e.getSource() == gui.btnCancelar) {
            gui.dispose();
        }
    }
}
