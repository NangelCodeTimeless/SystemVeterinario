package GUI;
import Controlador.Ctrl_Login;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;

public class Run {

    public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedLookAndFeelException {
        UIManager.setLookAndFeel("com.jtattoo.plaf.graphite.GraphiteLookAndFeel");
        Gui_Login frm_login = new Gui_Login();
        Ctrl_Login clogin = new Ctrl_Login(frm_login);
        clogin.show();
    }
}
