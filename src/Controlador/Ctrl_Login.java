package Controlador;
import Logica.Logica_Login;
import GUI.Gui_Login;
import GUI.Gui_MenuPrincipal;
import Mapeos_Tablas_BD.Logeo;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author Max
 */
public final class Ctrl_Login extends clsMetodos implements ActionListener {
    public Gui_Login login;
    private Logica_Login logica;
    
    public Ctrl_Login(Gui_Login ventLogin) {
        login = ventLogin;
        eventos();
    }

    public void eventos() {
        login.btnIngresarLogin.addActionListener(this);
        login.btnCancelarLogin.addActionListener(this);
    }
    
    
    public void show() {
        login.setTitle("Acceso al sistema");
        //login.setLocationRelativeTo(null);
        login.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        //login.pack();
        login.setResizable(false);
        login.setVisible(true);
    }

    public void proceso_logeo() {
        String nombreUsu = login.txtUsuario.getText().trim();
        char[] caracteres = login.txtContra.getPassword();
        String clave = new String(caracteres);
        Gui_MenuPrincipal Mprincipal = new Gui_MenuPrincipal();
        Ctrl_MenuPrincipal objeto;
        objeto = new Ctrl_MenuPrincipal(Mprincipal);
           
        if (nombreUsu.isEmpty() || clave.isEmpty()) {
            JOptionPane.showMessageDialog(login, "DEBE DE LLENAR TODOS LOS CAMPOS", "¡¡¡ADVERTENCIA!!!", JOptionPane.OK_OPTION);
        } else {
            
            logica = new Logica_Login();
            List<Logeo> dataUser = logica.Verificar_usuarios(nombreUsu, clave);
            String user = "";
            int cod = 0;
            String permiso = "";
            
            /*BLOQUEO DE BOTONES*/
            objeto.principal.menuGestionUsuario.setEnabled(false);
            objeto.principal.GestionPersonal.setEnabled(false);
            objeto.principal.menuServicios.setEnabled(false);
            objeto.principal.menuConsultas.setEnabled(false);
            objeto.principal.menuVentas.setEnabled(false);
            objeto.principal.menuPagos.setEnabled(false);
            objeto.principal.menuAbastecimiento.setEnabled(false);
            objeto.principal.menuReportes.setEnabled(false);
            objeto.principal.btnTratamientos.setEnabled(false);
            objeto.principal.btnControlVacunas.setEnabled(false);
            objeto.principal.btnHistoriasClinicas.setEnabled(false);
            objeto.principal.btnClientes.setEnabled(false);
            objeto.principal.btnMascotas.setEnabled(false);
            objeto.principal.Jmenu_Config.setEnabled(false);

            /*HABILITAR BOTONES*/
            for (Logeo a : dataUser) {
                cod = a.getUsuario().getId_usuario();
                user = a.getUsuario().getUsuario();
                permiso = a.getPermiso().getModulo();
                if (permiso.equals("GESTION DE USUARIOS")) {
                    objeto.principal.menuGestionUsuario.setEnabled(true);
                }
                if (permiso.equals("GESTION DE PERSONAL")) {
                    objeto.principal.GestionPersonal.setEnabled(true);
                }
                if (permiso.equals("GESTION DE CLIENTE")) {
                    objeto.principal.btnClientes.setEnabled(true);
                }
                if (permiso.equals("GESTION DE SERVICIOS")) {
                    objeto.principal.menuServicios.setEnabled(true);
                }
                if (permiso.equals("GESTION DE CONSULTAS")) {
                    objeto.principal.menuConsultas.setEnabled(true);
                }
                if (permiso.equals("GESTION DE VENTAS")) {
                    objeto.principal.menuVentas.setEnabled(true);
                }
                if (permiso.equals("GESTION DE PAGOS")) {
                    objeto.principal.menuPagos.setEnabled(true);
                }
                if (permiso.equals("GESTION DE ABASTECIMIENTO")) {
                    objeto.principal.menuAbastecimiento.setEnabled(true);
                }
                if (permiso.equals("GESTION DE TRATAMIENTOS")) {
                    objeto.principal.btnTratamientos.setEnabled(true);
                }
                if (permiso.equals("GESTION DE VACUNAS")) {
                    objeto.principal.btnControlVacunas.setEnabled(true);
                }
                if (permiso.equals("GESTION DE HISTORIAS CLINICAS")) {
                    objeto.principal.btnHistoriasClinicas.setEnabled(true);
                }
                if (permiso.equals("GESTION DE MASCOTAS")) {
                    objeto.principal.btnMascotas.setEnabled(true);
                }
                if (permiso.equals("REPORTES")) {
                    objeto.principal.menuReportes.setEnabled(true);
                }
                if (permiso.equals("CONFIGURACION")) {
                    objeto.principal.Jmenu_Config.setEnabled(true);
                }
            }
            
            if (dataUser.isEmpty()) {
                JOptionPane.showMessageDialog(login, "Usuario o Contraseña incorrecto", "Mensaje de Error", JOptionPane.ERROR_MESSAGE);
            } else {
                login.dispose();
                Ctrl_MenuPrincipal.nomUsu = user;
                objeto.show();
            }
        }
    }

    @Override
    public void actionPerformed(ActionEvent escuchar) {
        if (escuchar.getSource() == login.btnIngresarLogin) {
            proceso_logeo();
        }
        
        if (escuchar.getSource() == login.btnCancelarLogin) {
            login.dispose();
        }
    }

}
