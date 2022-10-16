package com.sidetapp.sidetapp.DTO;

import java.io.Serializable;

public class EmpleadorVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer nit_empleador;
    private Integer contacto_empleador;
    private Integer calificacion_empleador;
    private String nombre_empleador;
    private String tipo_empleador;
    private String ciudad_empleador;
    private String categoria_empleador;
    private String disponibilidad_empleador;
    private String contrasena_empleador;

    /*
     * @return the nit_empleador
     **/
    public Integer getNit_empleador() {
        return nit_empleador;
    }

    /*
     * @param nit_empleador the nit_empleador to set
     **/
    public void setNit_empleador(Integer nit_empleador) {
        this.nit_empleador = nit_empleador;
    }

    /*
     * @return the contacto_empleador
     **/
    public Integer getContacto_empleador() {
        return contacto_empleador;
    }

    /*
     * @param contacto_empleador the contacto_empleador to set
     **/
    public void setContacto_empleador(Integer contacto_empleador) {
        this.contacto_empleador = contacto_empleador;
    }

    /*
     * @return the calificacion_empleador
     **/
    public Integer getCalificacion_empleador() {
        return calificacion_empleador;
    }

    /*
     * @param calificacion_empleador the calificacion_empleador to set
     **/
    public void setCalificacion_empleador(Integer calificacion_empleador) {
        this.calificacion_empleador = calificacion_empleador;
    }

    /*
     * @return the nombre_empleador
     **/
    public String getNombre_empleador() {
        return nombre_empleador;
    }

    /*
     * @param nombre_empleador the nombre_empleador to set
     **/
    public void setNombre_empleador(String nombre_empleador) {
        this.nombre_empleador = nombre_empleador;
    }

    /*
     * @return the tipo_empleador
     **/
    public String getTipo_empleador() {
        return tipo_empleador;
    }

    /*
     * @param tipo_empleador the tipo_empleador to set
     **/
    public void setTipo_empleador(String tipo_empleador) {
        this.tipo_empleador = tipo_empleador;
    }

    /*
     * @return the ciudad_empleador
     **/
    public String getCiudad_empleador() {
        return ciudad_empleador;
    }

    /*
     * @param ciudad_empleador the ciudad_empleador to set
     **/
    public void setCiudad_empleador(String ciudad_empleador) {
        this.ciudad_empleador = ciudad_empleador;
    }

    /*
     * @return the categoria_empleador
     **/
    public String getCategoria_empleador() {
        return categoria_empleador;
    }

    /*
     * @param categoria_empleador the categoria_empleador to set
     **/
    public void setCategoria_empleador(String categoria_empleador) {
        this.categoria_empleador = categoria_empleador;
    }

    /*
     * @return the disponibilidad_empleador
     **/
    public String getDisponibilidad_empleador() {
        return disponibilidad_empleador;
    }

    /*
     * @param disponibilidad_empleador the disponibilidad_empleador to set
     **/
    public void setDisponibilidad_empleador(String disponiblidad_empleador) {
        this.disponibilidad_empleador = disponiblidad_empleador;
    }

    /*
     * @return the nit_empleador
     **/
    public String getContrasena_empleador() {
        return contrasena_empleador;
    }

    /*
     * @param nit_empleador the nit_empleador to set
     **/
    public void setContrasena_empleador(String contrasena_empleador) {
        this.contrasena_empleador = contrasena_empleador;
    }

}
