/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author AlexanderCaballero
 */
public class Pregunta {
    private int idServicio;
    private String pregunta;
    private String respuesta;
    private Date created_at;

    public Pregunta() {
    }

    public Pregunta(int idServicio, String pregunta, String respuesta, Date created_at) {
        this.idServicio = idServicio;
        this.pregunta = pregunta;
        this.respuesta = respuesta;
        this.created_at = created_at;
    }

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicio) {
        this.idServicio = idServicio;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public String getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }
    
    
}
