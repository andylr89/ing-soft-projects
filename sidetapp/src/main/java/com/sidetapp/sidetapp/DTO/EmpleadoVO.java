package com.sidetapp.sidetapp.DTO;

import java.io.Serializable;

public class EmpleadoVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer dni_empleado;
    private Integer contacto_empleado;
    private Integer calificacion_empleado;
    private String nombre_empleado;
    private String apellido_empleado;
    private String habilidades_empleado;
    private String ciudad_empleado;
    private String categoria_empleado;
    private String fecha_nacimiento_empleado;
    private String disponibilidad_empleado;
    private String contrasena_empleado;
    private String direccion_empleado;

    public Integer getDni_empleado() {
        return dni_empleado;
    }

    public void setDni_empleado(Integer dni_empleado) {
        this.dni_empleado = dni_empleado;
    }

    public Integer getContacto_empleado() {
        return contacto_empleado;
    }

    public void setContacto_empleado(Integer contacto_empleado) {
        this.contacto_empleado = contacto_empleado;
    }

    public Integer getCalificacion_empleado() {
        return calificacion_empleado;
    }

    public void setCalificacion_empleado(Integer calificacion_empleado) {
        this.calificacion_empleado = calificacion_empleado;
    }

    public String getNombre_empleado() {
        return nombre_empleado;
    }

    public void setNombre_empleado(String nombre_empleado) {
        this.nombre_empleado = nombre_empleado;
    }

    public String getApellido_empleado() {
        return apellido_empleado;
    }

    public void setApellido_empleado(String apellido_empleado) {
        this.apellido_empleado = apellido_empleado;
    }

    public String getHabilidades_empleado() {
        return habilidades_empleado;
    }

    public void setHabilidades_empleado(String habilidades_empleado) {
        this.habilidades_empleado = habilidades_empleado;
    }

    public String getCiudad_empleado() {
        return ciudad_empleado;
    }

    public void setCiudad_empleado(String ciudad_empleado) {
        this.ciudad_empleado = ciudad_empleado;
    }

    public String getCategoria_empleado() {
        return categoria_empleado;
    }

    public void setCategoria_empleado(String categoria_empleado) {
        this.categoria_empleado = categoria_empleado;
    }

    public String getFecha_nacimiento_empleado() {
        return fecha_nacimiento_empleado;
    }

    public void setFecha_nacimiento_empleado(String fecha_nacimiento_empleado) {
        this.fecha_nacimiento_empleado = fecha_nacimiento_empleado;
    }

    public String getDisponibilidad_empleado() {
        return disponibilidad_empleado;
    }

    public void setDisponibilidad_empleado(String disponiblidad_empleado) {
        this.disponibilidad_empleado = disponiblidad_empleado;
    }

    public String getContrasena_empleado() {
        return contrasena_empleado;
    }

    public void setContrasena_empleado(String contrasena_empleado) {
        this.contrasena_empleado = contrasena_empleado;
    }

    public String getDireccion_empleado() {
        return direccion_empleado;
    }

    public void setDireccion_empleado(String direccion_empleado) {
        this.direccion_empleado = direccion_empleado;
    }

}
