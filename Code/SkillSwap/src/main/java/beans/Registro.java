/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Registro {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/skillswap";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "";

    public static void insertarUsuario(String name, String lastname, String email, String DNI, String birthdate, String password) {
        Connection connection = null;
        try {
            // Cargar el controlador de MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer la conexión a la base de datos
            connection = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

            // Consulta SQL para la inserción
            String query = "INSERT INTO usuario (name, lastname, email, DNI, birthdate, password) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, name);
            statement.setString(2, lastname);
            statement.setString(3, email);
            statement.setString(4, DNI);
            statement.setString(5, birthdate);
            statement.setString(6, password);
            statement.executeUpdate();
            System.out.println("Registro insertado exitosamente");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("Error al insertar usuario: " + e.getMessage());
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
