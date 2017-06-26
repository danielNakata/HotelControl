/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dnn.hotelcontrol.dto;

/**
 *
 * @author danie
 */
public class UsuarioDTO {
    
    public int idusuario = 0;
    public int idperfil = 0;
    public int esactivo = 0;
    public String login = "";
    public String contrasena = "";
    public String nombres = "";
    public String apellidos = "";
    public String fechaalta = "";

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public int getIdperfil() {
        return idperfil;
    }

    public void setIdperfil(int idperfil) {
        this.idperfil = idperfil;
    }

    public int getEsactivo() {
        return esactivo;
    }

    public void setEsactivo(int esactivo) {
        this.esactivo = esactivo;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getFechaalta() {
        return fechaalta;
    }

    public void setFechaalta(String fechaalta) {
        this.fechaalta = fechaalta;
    }

    @Override
    public String toString() {
        return "UsuarioDTO{" + "idusuario=" + idusuario + ", idperfil=" + idperfil + ", esactivo=" + esactivo + ", login=" + login + ", contrasena=" + contrasena + ", nombres=" + nombres + ", apellidos=" + apellidos + ", fechaalta=" + fechaalta + '}';
    }
    
}
