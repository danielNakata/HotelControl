/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dnn.hotelcontrol.gui.main;

import dnn.hotelcontrol.dto.UsuarioDTO;
import dnn.hotelcontrol.gui.empleados.VAsistenciaEmpleado;
import dnn.hotelcontrol.gui.empleados.VEditaEmpleado;
import dnn.hotelcontrol.gui.empleados.VReporteAsistencias;
import dnn.hotelcontrol.gui.empleados.VReporteEmpleados;
import dnn.hotelcontrol.gui.habitaciones.VConsumoHabitacion;
import dnn.hotelcontrol.gui.habitaciones.VEditaHabitacion;
import dnn.hotelcontrol.gui.habitaciones.VRentaHabitacion;
import dnn.hotelcontrol.gui.habitaciones.VReporteHabitaciones;
import dnn.hotelcontrol.gui.inventario.VAjusteInventario;
import dnn.hotelcontrol.gui.inventario.VEditaProducto;
import dnn.hotelcontrol.gui.inventario.VEntradaInventario;
import dnn.hotelcontrol.gui.inventario.VReporteInventario;
import dnn.hotelcontrol.gui.usuarios.VEditaUsuarios;
import dnn.hotelcontrol.gui.usuarios.VListaUsuarios;
import dnn.hotelcontrol.gui.usuarios.VLogAccesos;
import dnn.hotelcontrol.gui.usuarios.VLogin;
import dnn.hotelcontrol.gui.usuarios.VResetUsuarios;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.Point;
import java.awt.Toolkit;
import javax.swing.JInternalFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author danie
 */
public class VMain extends javax.swing.JFrame {
    
    private VLogin vlogin = null;
    private UsuarioDTO usuario = null;
    private VRentaHabitacion rentaHabitacion = null;
    private VConsumoHabitacion consumoHabitacion = null;
    private VEditaHabitacion editaHabitacion = null;
    private VReporteHabitaciones reporteHabitacion = null;
    private VEntradaInventario entradaInventario = null;
    private VAjusteInventario ajusteInventario = null;
    private VEditaProducto editaProducto = null;
    private VReporteInventario reporteInventario = null;
    private VAsistenciaEmpleado asistenciaEmpleados = null;
    private VEditaEmpleado editaEmpleado = null;
    private VReporteAsistencias reporteAsistencias = null;
    private VReporteEmpleados reporteEmpleados = null;
    
    private VEditaUsuarios editaUsuaios = null;
    private VListaUsuarios listaUsuarios = null;
    private VLogAccesos logAccesos = null;
    private VResetUsuarios resetUsuarios = null;

    /**
     * Creates new form VMain
     */
    public VMain() {
        initComponents();
        this.setVisible(true);
        this.jDesktopPane1.removeAll();
        this.setExtendedState(Frame.MAXIMIZED_BOTH);
        this.inicializaMenu();
        if(this.usuario == null){
            this.vlogin = new VLogin(this);
            this.vlogin.setLocation(this.centraPantalla(this.vlogin.getPreferredSize()));
            this.vlogin.setVisible(true);
            this.jDesktopPane1.add(this.vlogin);
            try{
                this.vlogin.setSelected(true);
            }catch(Exception ex){
                
            }
            this.jDesktopPane1.setSelectedFrame(vlogin);
        }
    }
    
    public void habilitaMenu(){
        try{
            this.optCuartos.setEnabled(true);
            this.optEmpleados.setEnabled(true);
            this.optInventario.setEnabled(true);
            this.optUsuarios.setEnabled(true);
            
            this.actInicioSesion.setEnabled(false);
            this.actCerrarSesion.setEnabled(true);
            this.actSalir.setEnabled(true);
            
            this.actRentaHabitacion.setEnabled(true);
            this.actEditaHabitacion.setEnabled(true);
            this.actConsumoHabitacion.setEnabled(true);
            this.actReporteHabitacion.setEnabled(true);
            
            this.actEntradaInv.setEnabled(true);
            this.actAjusteInv.setEnabled(true);
            this.actEditaProducto.setEnabled(true);
            this.actReporteInv.setEnabled(true);
            
            this.actEditaEmp.setEnabled(true);
            this.actAsistenciaEmp.setEnabled(true);
            this.actReporteAsist.setEnabled(true);
            this.actReporteEmp.setEnabled(true);
            
            this.actEditaUsuario.setEnabled(true);
            this.actResetUsuario.setEnabled(true);
            this.actLogAcceso.setEnabled(true);
            this.actReporteUsuarios.setEnabled(true);
            
            this.setTitle("Hotel Control Usuario: " + this.usuario.getNombres() + " " + this.usuario.getApellidos());
            
        }catch(Exception ex){
            
        }
    }
    
    /**
     * Metodo para inicializar el menu
     */
    private void inicializaMenu(){
        try{
            this.optApp.setEnabled(true);
            this.optAyuda.setEnabled(true);
            
            this.optCuartos.setEnabled(false);
            this.optEmpleados.setEnabled(false);
            this.optInventario.setEnabled(false);
            this.optUsuarios.setEnabled(false);
            
            this.actInicioSesion.setEnabled(true);
            this.actCerrarSesion.setEnabled(false);
            this.actSalir.setEnabled(true);
            
            this.actRentaHabitacion.setEnabled(false);
            this.actEditaHabitacion.setEnabled(false);
            this.actConsumoHabitacion.setEnabled(false);
            this.actReporteHabitacion.setEnabled(false);
            
            this.actEntradaInv.setEnabled(false);
            this.actAjusteInv.setEnabled(false);
            this.actEditaProducto.setEnabled(false);
            this.actReporteInv.setEnabled(false);
            
            this.actEditaEmp.setEnabled(false);
            this.actAsistenciaEmp.setEnabled(false);
            this.actReporteAsist.setEnabled(false);
            this.actReporteEmp.setEnabled(false);
            
            this.actEditaUsuario.setEnabled(false);
            this.actResetUsuario.setEnabled(false);
            this.actLogAcceso.setEnabled(false);
            this.actReporteUsuarios.setEnabled(false);
            
            this.actAcercade.setEnabled(true);
            this.actManual.setEnabled(true);
        }catch(Exception ex){
            
        }
    }
    
    
    private boolean existePantalla(JInternalFrame ventana){
        boolean flag = false;
        JInternalFrame[] componentes = this.jDesktopPane1.getAllFrames();
        for(int i = 0; i < componentes.length; i++){
            JInternalFrame aux = componentes[i];
            if(aux.equals(ventana)){
                flag = true;
                break;
            }
        }
        
        return flag;
    }
    
    /**
     * Metodo para centrar la pantalla
     * @param d tamaño de la pantalla a centrar
     * @return 
     */
    private Point centraPantalla(Dimension d){
        Point p = new Point();
        Dimension desk = Toolkit.getDefaultToolkit().getScreenSize();
        int posx = desk.width / 2;
        int posy = (desk.height) / 3;
        posx = posx - (d.width/2);
        posy = posy - (d.height/2);
        p.x = posx;
        p.y = posy;
        return p;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jDesktopPane1 = new javax.swing.JDesktopPane();
        jToolBar1 = new javax.swing.JToolBar();
        MenuBar = new javax.swing.JMenuBar();
        optApp = new javax.swing.JMenu();
        actInicioSesion = new javax.swing.JMenuItem();
        actCerrarSesion = new javax.swing.JMenuItem();
        actSalir = new javax.swing.JMenuItem();
        optCuartos = new javax.swing.JMenu();
        actRentaHabitacion = new javax.swing.JMenuItem();
        actConsumoHabitacion = new javax.swing.JMenuItem();
        actEditaHabitacion = new javax.swing.JMenuItem();
        actReporteHabitacion = new javax.swing.JMenuItem();
        optInventario = new javax.swing.JMenu();
        actEntradaInv = new javax.swing.JMenuItem();
        actAjusteInv = new javax.swing.JMenuItem();
        actEditaProducto = new javax.swing.JMenuItem();
        actReporteInv = new javax.swing.JMenuItem();
        optEmpleados = new javax.swing.JMenu();
        actEditaEmp = new javax.swing.JMenuItem();
        actAsistenciaEmp = new javax.swing.JMenuItem();
        actReporteAsist = new javax.swing.JMenuItem();
        actReporteEmp = new javax.swing.JMenuItem();
        optUsuarios = new javax.swing.JMenu();
        actEditaUsuario = new javax.swing.JMenuItem();
        actResetUsuario = new javax.swing.JMenuItem();
        actLogAcceso = new javax.swing.JMenuItem();
        actReporteUsuarios = new javax.swing.JMenuItem();
        optAyuda = new javax.swing.JMenu();
        actAcercade = new javax.swing.JMenuItem();
        actManual = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Control Motel");

        javax.swing.GroupLayout jDesktopPane1Layout = new javax.swing.GroupLayout(jDesktopPane1);
        jDesktopPane1.setLayout(jDesktopPane1Layout);
        jDesktopPane1Layout.setHorizontalGroup(
            jDesktopPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );
        jDesktopPane1Layout.setVerticalGroup(
            jDesktopPane1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 332, Short.MAX_VALUE)
        );

        jToolBar1.setRollover(true);

        optApp.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/app.png"))); // NOI18N
        optApp.setText("Aplicacion");

        actInicioSesion.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/acceso.png"))); // NOI18N
        actInicioSesion.setText("Inicio de Sesion");
        actInicioSesion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actInicioSesionActionPerformed(evt);
            }
        });
        optApp.add(actInicioSesion);

        actCerrarSesion.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/cerrar.png"))); // NOI18N
        actCerrarSesion.setText("Cerrar Sesion");
        actCerrarSesion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actCerrarSesionActionPerformed(evt);
            }
        });
        optApp.add(actCerrarSesion);

        actSalir.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/shutdown.png"))); // NOI18N
        actSalir.setText("Salir");
        actSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actSalirActionPerformed(evt);
            }
        });
        optApp.add(actSalir);

        MenuBar.add(optApp);

        optCuartos.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/habita.png"))); // NOI18N
        optCuartos.setText("Habitaciones");

        actRentaHabitacion.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/renta.png"))); // NOI18N
        actRentaHabitacion.setText("Renta");
        actRentaHabitacion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actRentaHabitacionActionPerformed(evt);
            }
        });
        optCuartos.add(actRentaHabitacion);

        actConsumoHabitacion.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/consumo.png"))); // NOI18N
        actConsumoHabitacion.setText("Consumo");
        actConsumoHabitacion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actConsumoHabitacionActionPerformed(evt);
            }
        });
        optCuartos.add(actConsumoHabitacion);

        actEditaHabitacion.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/editar.png"))); // NOI18N
        actEditaHabitacion.setText("Agregar / Modificar");
        actEditaHabitacion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actEditaHabitacionActionPerformed(evt);
            }
        });
        optCuartos.add(actEditaHabitacion);

        actReporteHabitacion.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/reporte.png"))); // NOI18N
        actReporteHabitacion.setText("Reporte de Uso");
        actReporteHabitacion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actReporteHabitacionActionPerformed(evt);
            }
        });
        optCuartos.add(actReporteHabitacion);

        MenuBar.add(optCuartos);

        optInventario.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/inventario.png"))); // NOI18N
        optInventario.setText("Inventario");

        actEntradaInv.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/entradainv.png"))); // NOI18N
        actEntradaInv.setText("Entrada");
        actEntradaInv.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actEntradaInvActionPerformed(evt);
            }
        });
        optInventario.add(actEntradaInv);

        actAjusteInv.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/ajuste.png"))); // NOI18N
        actAjusteInv.setText("Ajuste");
        actAjusteInv.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actAjusteInvActionPerformed(evt);
            }
        });
        optInventario.add(actAjusteInv);

        actEditaProducto.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/editar.png"))); // NOI18N
        actEditaProducto.setText("Agrega / Edita Producto");
        actEditaProducto.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actEditaProductoActionPerformed(evt);
            }
        });
        optInventario.add(actEditaProducto);

        actReporteInv.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/reporte.png"))); // NOI18N
        actReporteInv.setText("Reporte Entradas/Salidas");
        actReporteInv.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actReporteInvActionPerformed(evt);
            }
        });
        optInventario.add(actReporteInv);

        MenuBar.add(optInventario);

        optEmpleados.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/empleado.png"))); // NOI18N
        optEmpleados.setText("Empleados");

        actEditaEmp.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/editar.png"))); // NOI18N
        actEditaEmp.setText("Agregar / Editar");
        actEditaEmp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actEditaEmpActionPerformed(evt);
            }
        });
        optEmpleados.add(actEditaEmp);

        actAsistenciaEmp.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/asist.png"))); // NOI18N
        actAsistenciaEmp.setText("Asistencia");
        actAsistenciaEmp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actAsistenciaEmpActionPerformed(evt);
            }
        });
        optEmpleados.add(actAsistenciaEmp);

        actReporteAsist.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/reporte.png"))); // NOI18N
        actReporteAsist.setText("Reporte Asistencias");
        actReporteAsist.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actReporteAsistActionPerformed(evt);
            }
        });
        optEmpleados.add(actReporteAsist);

        actReporteEmp.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/lista.png"))); // NOI18N
        actReporteEmp.setText("Lista Empleados");
        actReporteEmp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actReporteEmpActionPerformed(evt);
            }
        });
        optEmpleados.add(actReporteEmp);

        MenuBar.add(optEmpleados);

        optUsuarios.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/user.png"))); // NOI18N
        optUsuarios.setText("Usuarios");

        actEditaUsuario.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/editar.png"))); // NOI18N
        actEditaUsuario.setText("Agregar / Editar");
        actEditaUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actEditaUsuarioActionPerformed(evt);
            }
        });
        optUsuarios.add(actEditaUsuario);

        actResetUsuario.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/escudo.png"))); // NOI18N
        actResetUsuario.setText("Reset Contrasena");
        actResetUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actResetUsuarioActionPerformed(evt);
            }
        });
        optUsuarios.add(actResetUsuario);

        actLogAcceso.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/log.png"))); // NOI18N
        actLogAcceso.setText("Log de Accesos");
        actLogAcceso.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actLogAccesoActionPerformed(evt);
            }
        });
        optUsuarios.add(actLogAcceso);

        actReporteUsuarios.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/lista.png"))); // NOI18N
        actReporteUsuarios.setText("Lista de Usuarios");
        actReporteUsuarios.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                actReporteUsuariosActionPerformed(evt);
            }
        });
        optUsuarios.add(actReporteUsuarios);

        MenuBar.add(optUsuarios);

        optAyuda.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/ayuda.png"))); // NOI18N
        optAyuda.setText("Ayuda");

        actAcercade.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/acerca.png"))); // NOI18N
        actAcercade.setText("Acerca de");
        optAyuda.add(actAcercade);

        actManual.setIcon(new javax.swing.ImageIcon(getClass().getResource("/dnn/hotelcontrol/gui/ico/menu/manual.png"))); // NOI18N
        actManual.setText("Manual de Usuario");
        optAyuda.add(actManual);

        MenuBar.add(optAyuda);

        setJMenuBar(MenuBar);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jToolBar1, javax.swing.GroupLayout.DEFAULT_SIZE, 621, Short.MAX_VALUE)
            .addComponent(jDesktopPane1)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jDesktopPane1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jToolBar1, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void actAsistenciaEmpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actAsistenciaEmpActionPerformed
        try{
            if(!existePantalla(this.asistenciaEmpleados)){
                this.asistenciaEmpleados = new VAsistenciaEmpleado(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.asistenciaEmpleados);
                try{
                    this.asistenciaEmpleados.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(asistenciaEmpleados);
            }else{
                try{
                    this.asistenciaEmpleados.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(asistenciaEmpleados);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actAsistenciaEmpActionPerformed

    private void actInicioSesionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actInicioSesionActionPerformed
        try{
            if(this.usuario == null){
                if(!existePantalla(this.vlogin)){
                    this.vlogin = new VLogin(this);
                    this.vlogin.setLocation(this.centraPantalla(this.vlogin.getPreferredSize()));
                    this.vlogin.setVisible(true);
                    this.jDesktopPane1.add(this.vlogin);
                    try{
                        this.vlogin.setSelected(true);
                    }catch(Exception ex){

                    }
                    this.jDesktopPane1.setSelectedFrame(vlogin);
                }else{
                    try{
                        this.vlogin.setSelected(true);
                    }catch(Exception ex){

                    }
                    this.jDesktopPane1.setSelectedFrame(vlogin);
                }
            }else{
                JOptionPane.showMessageDialog(null,"Ya existe una sesion iniciada", "Control Motel", JOptionPane.WARNING_MESSAGE);
                this.actCerrarSesion.setEnabled(true);
                this.actInicioSesion.setEnabled(false);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actInicioSesionActionPerformed

    private void actCerrarSesionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actCerrarSesionActionPerformed
        try{
            JOptionPane.showMessageDialog(null, "Cerrando Sesion", "Hotel Control", JOptionPane.INFORMATION_MESSAGE);
            this.usuario = null;
            this.setTitle("Hotel Control");
            this.inicializaMenu();
            this.jDesktopPane1.removeAll();
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actCerrarSesionActionPerformed

    private void actSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actSalirActionPerformed
        try{
            JOptionPane.showMessageDialog(null, "Saliendo...", "Hotel Control", JOptionPane.INFORMATION_MESSAGE);
            this.dispose();
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actSalirActionPerformed

    private void actRentaHabitacionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actRentaHabitacionActionPerformed
        try{
            if(!existePantalla(this.rentaHabitacion)){
                this.rentaHabitacion = new VRentaHabitacion(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.rentaHabitacion);
                try{
                    this.rentaHabitacion.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(rentaHabitacion);
            }else{
                try{
                    this.rentaHabitacion.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(rentaHabitacion);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actRentaHabitacionActionPerformed

    private void actConsumoHabitacionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actConsumoHabitacionActionPerformed
        try{
            if(!existePantalla(this.consumoHabitacion)){
                this.consumoHabitacion = new VConsumoHabitacion(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.consumoHabitacion);
                try{
                    this.consumoHabitacion.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(consumoHabitacion);
            }else{
                try{
                    this.consumoHabitacion.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(consumoHabitacion);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actConsumoHabitacionActionPerformed

    private void actEditaHabitacionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actEditaHabitacionActionPerformed
        try{
            if(!existePantalla(this.editaHabitacion)){
                this.editaHabitacion = new VEditaHabitacion(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.editaHabitacion);
                try{
                    this.editaHabitacion.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(editaHabitacion);
            }else{
                try{
                    this.editaHabitacion.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(editaHabitacion);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actEditaHabitacionActionPerformed

    private void actReporteHabitacionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actReporteHabitacionActionPerformed
        try{
            if(!existePantalla(this.reporteHabitacion)){
                this.reporteHabitacion = new VReporteHabitaciones(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.reporteHabitacion);
                try{
                    this.reporteHabitacion.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(reporteHabitacion);
            }else{
                try{
                    this.reporteHabitacion.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(reporteHabitacion);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actReporteHabitacionActionPerformed

    private void actEntradaInvActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actEntradaInvActionPerformed
        try{
            if(!existePantalla(this.entradaInventario)){
                this.entradaInventario = new VEntradaInventario(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.entradaInventario);
                try{
                    this.entradaInventario.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(entradaInventario);
            }else{
                try{
                    this.entradaInventario.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(entradaInventario);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actEntradaInvActionPerformed

    private void actAjusteInvActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actAjusteInvActionPerformed
        try{
            if(!existePantalla(this.ajusteInventario)){
                this.ajusteInventario = new VAjusteInventario(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.ajusteInventario);
                try{
                    this.ajusteInventario.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(ajusteInventario);
            }else{
                try{
                    this.ajusteInventario.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(ajusteInventario);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actAjusteInvActionPerformed

    private void actEditaUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actEditaUsuarioActionPerformed
        try{
            if(!existePantalla(this.editaUsuaios)){
                this.editaUsuaios = new VEditaUsuarios(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.editaUsuaios);
                try{
                    this.editaUsuaios.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(editaUsuaios);
            }else{
                try{
                    this.editaUsuaios.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(editaUsuaios);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actEditaUsuarioActionPerformed

    private void actResetUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actResetUsuarioActionPerformed
        try{
            if(!existePantalla(this.resetUsuarios)){
                this.resetUsuarios = new VResetUsuarios(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.resetUsuarios);
                try{
                    this.resetUsuarios.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(resetUsuarios);
            }else{
                try{
                    this.resetUsuarios.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(resetUsuarios);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actResetUsuarioActionPerformed

    private void actLogAccesoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actLogAccesoActionPerformed
        try{
            if(!existePantalla(this.logAccesos)){
                this.logAccesos = new VLogAccesos(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.logAccesos);
                try{
                    this.logAccesos.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(logAccesos);
            }else{
                try{
                    this.logAccesos.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(logAccesos);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actLogAccesoActionPerformed

    private void actReporteUsuariosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actReporteUsuariosActionPerformed
        try{
            if(!existePantalla(this.listaUsuarios)){
                this.listaUsuarios = new VListaUsuarios(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.listaUsuarios);
                try{
                    this.listaUsuarios.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(listaUsuarios);
            }else{
                try{
                    this.listaUsuarios.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(logAccesos);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actReporteUsuariosActionPerformed

    private void actEditaProductoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actEditaProductoActionPerformed
        try{
            if(!existePantalla(this.editaProducto)){
                this.editaProducto = new VEditaProducto(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.editaProducto);
                try{
                    this.editaProducto.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(editaProducto);
            }else{
                try{
                    this.editaProducto.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(editaProducto);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actEditaProductoActionPerformed

    private void actReporteInvActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actReporteInvActionPerformed
        try{
            if(!existePantalla(this.reporteInventario)){
                this.reporteInventario = new VReporteInventario(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.reporteInventario);
                try{
                    this.reporteInventario.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(reporteInventario);
            }else{
                try{
                    this.reporteInventario.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(reporteInventario);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actReporteInvActionPerformed

    private void actEditaEmpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actEditaEmpActionPerformed
        try{
            if(!existePantalla(this.editaEmpleado)){
                this.editaEmpleado = new VEditaEmpleado(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.editaEmpleado);
                try{
                    this.editaEmpleado.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(editaEmpleado);
            }else{
                try{
                    this.editaEmpleado.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(editaEmpleado);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actEditaEmpActionPerformed

    private void actReporteAsistActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actReporteAsistActionPerformed
        try{
            if(!existePantalla(this.reporteAsistencias)){
                this.reporteAsistencias = new VReporteAsistencias(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.reporteAsistencias);
                try{
                    this.reporteAsistencias.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(reporteAsistencias);
            }else{
                try{
                    this.reporteAsistencias.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(reporteAsistencias);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actReporteAsistActionPerformed

    private void actReporteEmpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_actReporteEmpActionPerformed
        try{
            if(!existePantalla(this.reporteEmpleados)){
                this.reporteEmpleados = new VReporteEmpleados(this, jDesktopPane1, usuario);
                this.jDesktopPane1.add(this.reporteEmpleados);
                try{
                    this.reporteEmpleados.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(reporteEmpleados);
            }else{
                try{
                    this.reporteEmpleados.setSelected(true);
                }catch(Exception ex){

                }
                this.jDesktopPane1.setSelectedFrame(reporteEmpleados);
            }
        }catch(Exception ex){
            
        }
    }//GEN-LAST:event_actReporteEmpActionPerformed

    public UsuarioDTO getUsuario() {
        return usuario;
    }

    public void setUsuario(UsuarioDTO usuario) {
        this.usuario = usuario;
    }

    
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenuBar MenuBar;
    private javax.swing.JMenuItem actAcercade;
    private javax.swing.JMenuItem actAjusteInv;
    private javax.swing.JMenuItem actAsistenciaEmp;
    private javax.swing.JMenuItem actCerrarSesion;
    private javax.swing.JMenuItem actConsumoHabitacion;
    private javax.swing.JMenuItem actEditaEmp;
    private javax.swing.JMenuItem actEditaHabitacion;
    private javax.swing.JMenuItem actEditaProducto;
    private javax.swing.JMenuItem actEditaUsuario;
    private javax.swing.JMenuItem actEntradaInv;
    private javax.swing.JMenuItem actInicioSesion;
    private javax.swing.JMenuItem actLogAcceso;
    private javax.swing.JMenuItem actManual;
    private javax.swing.JMenuItem actRentaHabitacion;
    private javax.swing.JMenuItem actReporteAsist;
    private javax.swing.JMenuItem actReporteEmp;
    private javax.swing.JMenuItem actReporteHabitacion;
    private javax.swing.JMenuItem actReporteInv;
    private javax.swing.JMenuItem actReporteUsuarios;
    private javax.swing.JMenuItem actResetUsuario;
    private javax.swing.JMenuItem actSalir;
    private javax.swing.JDesktopPane jDesktopPane1;
    private javax.swing.JToolBar jToolBar1;
    private javax.swing.JMenu optApp;
    private javax.swing.JMenu optAyuda;
    private javax.swing.JMenu optCuartos;
    private javax.swing.JMenu optEmpleados;
    private javax.swing.JMenu optInventario;
    private javax.swing.JMenu optUsuarios;
    // End of variables declaration//GEN-END:variables
}
