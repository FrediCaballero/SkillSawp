package controller;

import org.mindrot.jbcrypt.BCrypt;
import tools.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Random;

public class Registro {
    
    public void insertarUsuario(String name, String lastname, String email, String DNI, String birthdate, String password) {
        Connection connection = null;
        Conexion conexion = null;

        try {
            conexion = new Conexion();
            connection = conexion.conecta();

            String query = "INSERT INTO usuario (name, lastname, email, DNI, birthdate, password) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, name);
            statement.setString(2, lastname);
            statement.setString(3, email);
            statement.setString(4, DNI);
            statement.setString(5, birthdate);

            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
            statement.setString(6, hashedPassword);


            statement.executeUpdate();
            System.out.println("Registro insertado exitosamente");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Error al insertar usuario: " + e.getMessage());
        } finally {
            if (connection != null) {
                if (conexion != null) {
                    conexion.cierraConexion();
                }
            }
        }
    }

}
