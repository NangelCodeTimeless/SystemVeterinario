package Controlador;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javax.swing.JTextField;

/**
 *
 * @author Nahum
 */
public class clsLimitarCaracteres implements KeyListener{
    int logitud;
     JTextField componente;
    public clsLimitarCaracteres(JTextField comp,int cant_caracteres){
        componente = comp;
        logitud = cant_caracteres;
    }

    @Override
    public void keyTyped(KeyEvent evento) {
        String Caracteres = componente.getText(); 
        if(Caracteres.length()>=logitud){ 
            componente.getToolkit().beep();
            evento.consume(); 
        }
    }

    @Override
    public void keyPressed(KeyEvent ke) {
        //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void keyReleased(KeyEvent ke) {
         //To change body of generated methods, choose Tools | Templates.
    }
    
}
