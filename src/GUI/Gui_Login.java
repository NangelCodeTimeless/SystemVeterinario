package GUI;


public class Gui_Login extends javax.swing.JFrame {

    public Gui_Login() {
        initComponents();
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnCancelarLogin = new javax.swing.JToggleButton();
        btnIngresarLogin = new javax.swing.JToggleButton();
        lb_user = new javax.swing.JLabel();
        txtUsuario = new javax.swing.JTextField();
        lb_ImgUser = new javax.swing.JLabel();
        txtContra = new javax.swing.JPasswordField();
        lb_pass = new javax.swing.JLabel();
        lb_ImgPass = new javax.swing.JLabel();
        lb_ImgFondoLogin = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Login");
        setAlwaysOnTop(true);
        setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        setMaximumSize(new java.awt.Dimension(613, 423));
        setMinimumSize(new java.awt.Dimension(613, 423));
        setName("LoginForm"); // NOI18N
        setResizable(false);
        getContentPane().setLayout(null);

        btnCancelarLogin.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Img_cancel.png"))); // NOI18N
        btnCancelarLogin.setText("Cancelar");
        btnCancelarLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelarLoginActionPerformed(evt);
            }
        });
        getContentPane().add(btnCancelarLogin);
        btnCancelarLogin.setBounds(340, 310, 124, 50);

        btnIngresarLogin.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Img_Ok.png"))); // NOI18N
        btnIngresarLogin.setText("Ingresar");
        btnIngresarLogin.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnIngresarLoginActionPerformed(evt);
            }
        });
        getContentPane().add(btnIngresarLogin);
        btnIngresarLogin.setBounds(170, 310, 124, 50);

        lb_user.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        lb_user.setText("Usuario:");
        getContentPane().add(lb_user);
        lb_user.setBounds(170, 100, 66, 30);

        txtUsuario.setFont(new java.awt.Font("Arial", 1, 14)); // NOI18N
        txtUsuario.setForeground(new java.awt.Color(0, 0, 153));
        txtUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtUsuarioActionPerformed(evt);
            }
        });
        getContentPane().add(txtUsuario);
        txtUsuario.setBounds(170, 140, 278, 30);
        txtUsuario.getAccessibleContext().setAccessibleName("");

        lb_ImgUser.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Img_Usuario.png"))); // NOI18N
        getContentPane().add(lb_ImgUser);
        lb_ImgUser.setBounds(90, 130, 70, 72);

        txtContra.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        txtContra.setForeground(new java.awt.Color(0, 0, 153));
        txtContra.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtContraActionPerformed(evt);
            }
        });
        getContentPane().add(txtContra);
        txtContra.setBounds(170, 240, 280, 30);

        lb_pass.setFont(new java.awt.Font("Arial", 1, 16)); // NOI18N
        lb_pass.setText("Contraseña:");
        getContentPane().add(lb_pass);
        lb_pass.setBounds(170, 200, 95, 30);

        lb_ImgPass.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Img_Pass.png"))); // NOI18N
        getContentPane().add(lb_ImgPass);
        lb_ImgPass.setBounds(100, 210, 64, 64);

        lb_ImgFondoLogin.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Imagenes/Img_FondoLogin.png"))); // NOI18N
        getContentPane().add(lb_ImgFondoLogin);
        lb_ImgFondoLogin.setBounds(0, 0, 610, 420);

        getAccessibleContext().setAccessibleDescription("");

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnCancelarLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarLoginActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnCancelarLoginActionPerformed

    private void btnIngresarLoginActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnIngresarLoginActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_btnIngresarLoginActionPerformed

    private void txtUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtUsuarioActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtUsuarioActionPerformed

    private void txtContraActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtContraActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtContraActionPerformed
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    public javax.swing.JToggleButton btnCancelarLogin;
    public javax.swing.JToggleButton btnIngresarLogin;
    private javax.swing.JLabel lb_ImgFondoLogin;
    private javax.swing.JLabel lb_ImgPass;
    private javax.swing.JLabel lb_ImgUser;
    public javax.swing.JLabel lb_pass;
    public javax.swing.JLabel lb_user;
    public javax.swing.JPasswordField txtContra;
    public javax.swing.JTextField txtUsuario;
    // End of variables declaration//GEN-END:variables
}
