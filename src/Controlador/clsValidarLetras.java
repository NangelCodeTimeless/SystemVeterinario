package Controlador;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javax.swing.JTextArea;
import javax.swing.JTextField;

/**
 *
 * @author Nahum
 */

/*
    INFORMACION
    evt.getKeyChar()==KeyEvent.VK_SPACE      ----------> INGRESOS DE ESPACIOS
    evt.getKeyChar()==KeyEvent.VK_BACK_SPACE ----------> INGRESO DE LA TECLA BACK SPACE
*/


public class clsValidarLetras implements KeyListener {
    JTextField componente;
    int longitud;
    
    public clsValidarLetras(JTextField comp, int ancho){
        this.componente = comp;
        this.longitud = ancho;
    }

    @Override
    public void keyTyped(KeyEvent evento) {
       String Caracteres = componente.getText(); 
        if(Caracteres.length()>=longitud){ 
            componente.getToolkit().beep();
            evento.consume(); 
        } 
        
        if(!Character.isAlphabetic(evento.getKeyChar()) && !(evento.getKeyChar()==KeyEvent.VK_SPACE) && !(evento.getKeyChar()==KeyEvent.VK_BACK_SPACE)){
            evento.consume();
            componente.getToolkit().beep();
        }
    }

    @Override
    public void keyPressed(KeyEvent evento) { }
    @Override
    public void keyReleased(KeyEvent evento) { }
}
