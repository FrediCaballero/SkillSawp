package model;

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
public class Conversacion {
    private int idConversacion;
    private int idUser_transmitter;
    private int idUser_receiver;
    
    public Conversacion(){
        
    }

    public Conversacion(int idConversacion, int idUser_transmitter, int idUser_receiver) {
        this.idConversacion = idConversacion;
        this.idUser_transmitter = idUser_transmitter;
        this.idUser_receiver = idUser_receiver;
    }

    public int getIdConversacion() {
        return idConversacion;
    }

    public void setIdConversacion(int idConversacion) {
        this.idConversacion = idConversacion;
    }

    public int getIdUser_transmitter() {
        return idUser_transmitter;
    }

    public void setIdUser_transmitter(int idUser_transmitter) {
        this.idUser_transmitter = idUser_transmitter;
    }

    public int getIdUser_receiver() {
        return idUser_receiver;
    }

    public void setIdUser_receiver(int idUser_receiver) {
        this.idUser_receiver = idUser_receiver;
    }
    
    // Método para listar las conversaciones de un usuario
    public static ArrayList<Conversacion> listarConversaciones(int userId) {
        ArrayList<Conversacion> conversaciones = new ArrayList<>();
        Conexion conexion = new Conexion();

        try (Connection connection = conexion.conecta()) {
            if (connection != null) {
                String query = "SELECT * FROM Conversacion WHERE idUser_transmitter = ? OR idUser_receiver = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    preparedStatement.setInt(1, userId);
                    preparedStatement.setInt(2, userId);

                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        while (resultSet.next()) {
                            int idConversacion = resultSet.getInt("idConversation");
                            int idUser_transmitter = resultSet.getInt("idUser_transmitter");
                            int idUser_receiver = resultSet.getInt("idUser_receiver");

                            Conversacion conversacion = new Conversacion(idConversacion, idUser_transmitter, idUser_receiver);
                            conversaciones.add(conversacion);
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conversaciones;
    }

    
}
