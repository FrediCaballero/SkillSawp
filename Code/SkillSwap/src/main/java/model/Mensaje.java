package model;

import java.sql.Date;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import tools.Conexion;

/**
 *
 * @author AlexanderCaballero
 */

public class Mensaje {
    private int idMensaje;
    private int idConversacion;
    private String mensage;
    private Date hour;

    public Mensaje() {
    }
       
    public Mensaje(int idMensaje, int idConversacion, String mensage, Date hour) {
        this.idMensaje = idMensaje;
        this.idConversacion = idConversacion;
        this.mensage = mensage;
        this.hour = hour;
    }

    public int getIdMensaje() {
        return idMensaje;
    }

    public void setIdMensaje(int idMensaje) {
        this.idMensaje = idMensaje;
    }

    public int getIdConversacion() {
        return idConversacion;
    }

    public void setIdConversacion(int idConversacion) {
        this.idConversacion = idConversacion;
    }

    public String getMensage() {
        return mensage;
    }

    public void setMensage(String menssage) {
        this.mensage = mensage;
    }

    public Date getHour() {
        return hour;
    }

    public void setHour(Date hour) {
        this.hour = hour;
    }
      
    public static ArrayList<Mensaje> visualizarMensajes(int idConversacion) {
        ArrayList<Mensaje> mensajes = new ArrayList<>();
        Conexion conexion = new Conexion();

        try (Connection connection = conexion.conecta()) {
            if (connection != null) {
                String query = "SELECT * FROM Mensaje WHERE idConversation = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    preparedStatement.setInt(1, idConversacion);

                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        while (resultSet.next()) {
                            int idMensaje = resultSet.getInt("idMensaje");
                            String mensaje = resultSet.getString("message");
                            Date hora = resultSet.getDate("hour");

                            Mensaje mensajeObj = new Mensaje(idMensaje, idConversacion, mensaje, hora);
                            mensajes.add(mensajeObj);
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return mensajes;
    }
    
}
