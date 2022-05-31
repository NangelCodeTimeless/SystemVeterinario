package Controlador;

import GUI.Gui_MenuPrincipal;
import java.awt.Container;
import java.awt.Graphics;
import java.awt.Rectangle;
import javax.swing.ImageIcon;
/*
    author: nahum
*/

public class clsPanel extends Container{
    ImageIcon icono;
    Gui_MenuPrincipal principal;
    
    public clsPanel(Gui_MenuPrincipal menu)
    {
        principal = menu;
        icono = new ImageIcon (getClass().getResource("/Imagenes/Img_FondoMP.jpeg"));
        this.add(principal.btnHistoriasClinicas);
        this.add(principal.btnClientes);
        this.add(principal.btnControlVacunas);
        this.add(principal.btnMascotas);
        this.add(principal.btnTratamientos);
    } 
	
    @Override
    public void paint (Graphics g)
    {
        Rectangle r = g.getClipBounds();
        g.setColor(this.getBackground());
        g.fillRect (r.x, r.y, r.width, r.height);
        g.drawImage (icono.getImage(), 0, 0, this.getWidth(), this.getHeight(), this.getBackground(), this);
        super.paint(g);
    }
}
