package Controlador;

import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import javax.swing.JTextField;

/**
 *
 * @author Nahum
 */
public class clsValidarPrecios implements KeyListener  {
    JTextField componente;
    int longitud;
    
    public clsValidarPrecios(JTextField comp, int ancho){
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
        
        if(!Character.isDigit(evento.getKeyChar()) && !(evento.getKeyChar()==KeyEvent.VK_BACK_SPACE) && !(evento.getKeyChar() == '.')){
            evento.consume();
            componente.getToolkit().beep();
        }
    }

    @Override
    public void keyPressed(KeyEvent evento) { }
    @Override
    public void keyReleased(KeyEvent evento) { }
}
