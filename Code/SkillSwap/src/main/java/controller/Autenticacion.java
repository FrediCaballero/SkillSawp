package controller;

import org.mindrot.jbcrypt.BCrypt;
import tools.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Autenticacion {
    private Connection dbConnection;
    private Conexion conexion;

    public Autenticacion() {
        conexion = new Conexion();
        dbConnection = conexion.conecta();
    }

    // Método para autenticar un usuario comparando el hash de la contraseña almacenado en la base de datos
    public boolean autenticarUsuario(String email, String password) {
        if (dbConnection != null) {
            try {
                String sql = "SELECT * FROM usuario WHERE email = ?";
                PreparedStatement statement = dbConnection.prepareStatement(sql);
                statement.setString(1, email);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    // Obtiene el hash de la contraseña almacenada en la base de datos
                    String hashedPasswordFromDB = resultSet.getString("password");

                    // Verifica si la contraseña proporcionada coincide con el hash almacenado
                    return BCrypt.checkpw(password, hashedPasswordFromDB);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            } finally {
                try {
                    if (dbConnection != null) {
                        dbConnection.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return false;
    }
}
