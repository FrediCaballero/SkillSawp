package controller;

/**
 *
 * @author AlexanderCaballero
 */
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Contrato;
import tools.Conexion;

public class ContratoController {

    // Método para crear un nuevo contrato
    public static boolean crearContrato(Contrato contrato) {
        Conexion conexion = new Conexion();
        Connection connection = null;
        
        try{
            connection = conexion.conecta();
            if (connection != null) {
                String query = "INSERT INTO Contrato (idUserOffer, idUserReceive, idServicio, contractDate, address, description, price, hour, conInitial) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    preparedStatement.setInt(1, contrato.getIdUserOffer());
                    preparedStatement.setInt(2, contrato.getIdUserReceive());
                    preparedStatement.setInt(3, contrato.getIdServicio());
                    preparedStatement.setDate(4, contrato.getContractDate());
                    preparedStatement.setString(5, contrato.getAddress());
                    preparedStatement.setString(6, contrato.getDescription());
                    preparedStatement.setDouble(7, contrato.getPrice());
                    preparedStatement.setString(8, contrato.getHour());
                    preparedStatement.setDate(9, contrato.getConInitial());

                    // Ejecutar la actualización
                    int rowsAffected = preparedStatement.executeUpdate();

                    // Si se ha insertado al menos una fila, se considera exitoso
                    return rowsAffected > 0;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

    // Método para obtener todos los contratos de un usuario
    public static List<Contrato> obtenerContratosUsuario(int userId) {
        List<Contrato> contratos = new ArrayList<>();

        Conexion conexion = new Conexion();
        Connection connection = null;
        
        try{
            connection = conexion.conecta();
            if (connection != null) {
                String query = "SELECT * FROM Contrato WHERE idUserOffer = ? OR idUserReceive = ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    preparedStatement.setInt(1, userId);
                    preparedStatement.setInt(2, userId);

                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        while (resultSet.next()) {
                            int idUserOffer = resultSet.getInt("idUserOffer");
                            int idUserReceive = resultSet.getInt("idUserReceive");
                            int idServicio = resultSet.getInt("idServicio");
                            Date contractDate = resultSet.getDate("contractDate");
                            String address = resultSet.getString("address");
                            String description = resultSet.getString("description");
                            double price = resultSet.getDouble("price");
                            String hour = resultSet.getString("hour");
                            Date conInitial = resultSet.getDate("conInitial");

                            Contrato contrato = new Contrato(idUserOffer, idUserReceive, idServicio, contractDate, address, description, price, hour, conInitial);
                            contratos.add(contrato);
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return contratos;
    }

    // Otros métodos según las necesidades de tu aplicación

}

