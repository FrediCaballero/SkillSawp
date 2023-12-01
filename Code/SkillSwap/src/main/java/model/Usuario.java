package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import tools.Conexion;

/**
 * Clase que representa un usuario con información adicional.
 */
public class Usuario {
    private String email;
    private String password;
    private String name;
    private String lastname;
    private String DNI;
    private String birthdate;
    private String imagen;

    public Usuario() {

    }

    public Usuario(String email, String password, String name, String lastname, String DNI, String birthdate, String imagen) {
        this.email = email;
        this.password = password;
        this.name = name;
        this.lastname = lastname;
        this.DNI = DNI;
        this.birthdate = birthdate;
        this.imagen = imagen;
    }

    public int getLogueado(String mail, String psw) {
        int logueado;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            int cont = 0;
            String query = "SELECT * FROM acceso WHERE email='" + mail + "' AND password='" + psw + "'";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            while (resultado.next()) {
                cont++;
            }
            if (cont != 0) {
                logueado = 1;
            } else {
                logueado = 0;
            }
            return logueado;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return 1000;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
    // Getters y setters para la información adicional
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getBirthdate() {
        return birthdate;
    }

    public void setBirthdate(String birthdate) {
        this.birthdate = birthdate;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
    public static ArrayList<Usuario> listarUsuarios(int userId) {
        ArrayList<Usuario> usuarios = new ArrayList<>();
        Conexion conexion = new Conexion();

        try (Connection connection = conexion.conecta()) {
            if (connection != null) {
                String query = "SELECT * FROM Usuario WHERE id != ?";
                try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                    preparedStatement.setInt(1, userId);

                    try (ResultSet resultSet = preparedStatement.executeQuery()) {
                        while (resultSet.next()) {
                            String email = resultSet.getString("email");
                            String password = resultSet.getString("password");
                            String name = resultSet.getString("name");
                            String lastname = resultSet.getString("lastname");
                            String DNI = resultSet.getString("DNI");
                            String birthdate = resultSet.getString("birthdate");
                            String imagen = resultSet.getString("imagen");

                            Usuario usuario = new Usuario(email, password, name, lastname, DNI, birthdate, imagen);
                            usuarios.add(usuario);
                        }
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuarios;
    }
}
