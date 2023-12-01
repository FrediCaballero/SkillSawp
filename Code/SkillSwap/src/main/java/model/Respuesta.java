
package model;

import java.sql.Date;

/**
 *
 * @author AlexanderCaballero
 */
public class Respuesta {
    private int idComentario;
    private int idUser;
    private String Respuesta;
    private Date created_at;

    public Respuesta() {
    }

    public Respuesta(int idComentario, int idUser, String Respuesta, Date created_at) {
        this.idComentario = idComentario;
        this.idUser = idUser;
        this.Respuesta = Respuesta;
        this.created_at = created_at;
    }

    public int getIdComentario() {
        return idComentario;
    }

    public void setIdComentario(int idComentario) {
        this.idComentario = idComentario;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getRespuesta() {
        return Respuesta;
    }

    public void setRespuesta(String Respuesta) {
        this.Respuesta = Respuesta;
    }

    public Date getCreated_at() {
        return created_at;
    }

    public void setCreated_at(Date created_at) {
        this.created_at = created_at;
    }
    
    
    
    
}
