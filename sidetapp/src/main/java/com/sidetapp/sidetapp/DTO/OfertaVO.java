package com.sidetapp.sidetapp.DTO;

import java.io.Serializable;

public class OfertaVO implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id_oferta;
    private Integer id_oferente;
    private String nombre_oferente;
    private String descripcion_oferta;

    /*
     * @return the id_oferta
     **/
    public Integer getId_oferta() {
        return id_oferta;
    }

    /*
     * @param id_oferta the id_oferta to set
     **/
    public void setId_oferta(Integer id_oferta) {
        this.id_oferta = id_oferta;
    }

    /*
     * @return the id_oferente
     **/
    public Integer getId_oferente() {
        return id_oferente;
    }

    /*
     * @param id_oferente the id_oferente to set
     **/
    public void setId_oferente(Integer id_oferente) {
        this.id_oferente = id_oferente;
    }

    /*
     * @return the nombre_oferente
     **/
    public String getNombre_oferente() {
        return nombre_oferente;
    }

    /*
     * @param nombre_oferente the nombre_oferente to set
     **/
    public void setNombre_oferente(String nombre_oferente) {
        this.nombre_oferente = nombre_oferente;
    }

    /*
     * @return the descripcion_oferta
     **/
    public String getDescripcion_oferta() {
        return descripcion_oferta;
    }

    /*
     * @param descripcion_oferta the descripcion_oferta to set
     **/
    public void setDescripcion_oferta(String descripcion_oferta) {
        this.descripcion_oferta = descripcion_oferta;
    }

}
