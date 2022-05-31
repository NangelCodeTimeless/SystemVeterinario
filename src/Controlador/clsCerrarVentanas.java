package Controlador;

import java.awt.event.WindowAdapter;
import javax.swing.JDialog;
import javax.swing.JOptionPane;

/**
 *
 * @author Nahum
 */
public class clsCerrarVentanas extends WindowAdapter{
    JDialog ventanas;
    public clsCerrarVentanas(JDialog vent){
        ventanas = vent;
    }
    
    @Override
    public void windowClosing(java.awt.event.WindowEvent windowEvent) {
        int opcion = JOptionPane.showConfirmDialog(ventanas,"¿Seguro desea salir?","CONFIRMACIÓN",JOptionPane.YES_NO_OPTION,JOptionPane.QUESTION_MESSAGE);
        if (opcion == 0){
           ventanas.dispose();
        }
    }
}
