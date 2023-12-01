/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import tools.Conexion;
/**
 *
 * @author EElite
 */
public class VerificarUsuario {

    public static boolean correoEstaRegistrado(String email) {
        Connection connection = null;
        Conexion conexion = null;
        try {
            conexion = new Conexion();
            connection = conexion.conecta();
            // Consulta para verificar si el correo ya está registrado
            String query = "SELECT COUNT(*) FROM usuario WHERE email=?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, email);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        int count = resultSet.getInt(1);
                        return count > 0;
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Cerrar la conexión a la base de datos si está abierta
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return false;
    }
    public static boolean dniEstaRegistrado(String dni) {
        Connection connection = null;
        Conexion conexion = null;

        try {
            conexion = new Conexion();
            connection = conexion.conecta();

            // Consulta para verificar si el DNI ya está registrado
            String query = "SELECT COUNT(*) FROM usuario WHERE DNI=?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, dni);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        int count = resultSet.getInt(1);
                        return count > 0;
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            cerrarConexion(connection);
        }

        return false;
    }

    /**
     * Cierra la conexión a la base de datos si está abierta.
     * @param connection La conexión a cerrar.
     */
    private static void cerrarConexion(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
