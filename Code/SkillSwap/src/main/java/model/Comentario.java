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
public class Comentario {
    private int idServicio;
    private int idUser;
    private String comentario;
    private Date created_at;

    public Comentario() {
    }

    public Comentario(int idServicio, int idUser, String comentario, Date created_at) {
        this.idServicio = idServicio;
        this.idUser = idUser;
        this.comentario = comentario;
        this.created_at = created_at;
    }

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicio) {
        this.idServicio = idServicio;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }
    
}
