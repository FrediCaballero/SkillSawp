/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

/**
 *
 * @author AlexanderCaballero
 */

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

    public boolean autenticarUsuario(String email, String password) {
        if (dbConnection != null) {
            try {
                String sql = "SELECT * FROM usuario WHERE email = ? AND password = ?";
                PreparedStatement statement = dbConnection.prepareStatement(sql);
                statement.setString(1, email);
                statement.setString(2, password);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    // Las credenciales son válidas
                    return true;
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
