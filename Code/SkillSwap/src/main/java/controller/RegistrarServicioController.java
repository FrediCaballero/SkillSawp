package controller;


import tools.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;



public class RegistrarServicioController {

    public void insertarServicio(String idCategoria, String name, String description, String price, String imagen) {
        Connection connection = null;
        Conexion conexion = null;

        try {
            conexion = new Conexion();
            connection = conexion.conecta();


            String query = "INSERT INTO servicio (idCategoria, name, description, price, imagen) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, idCategoria);
            statement.setString(2, name);
            statement.setString(3, description);
            statement.setString(4, price);
            statement.setString(5, imagen);
            statement.executeUpdate();

            System.out.println("Su servicio ha sido registrado");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Error al insertar usuario: " + e.getMessage());
        } finally {
            // Cerrar la conexión sin manejar IOException, ya que la conexión no lanza IOException al cerrarse
            if (connection != null && conexion != null) {
                conexion.cierraConexion();
            }
        }
    }
}
