package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author AlexanderCaballero
 */
public class Conexion {
    private Connection cnx;
    private List<String> errorMessages = new ArrayList<>();

    public Connection conecta() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String user = "root";
            String password = "02Noviembre";
            String url = "jdbc:mysql://localhost:3306/skillswap";
            cnx = DriverManager.getConnection(url, user, password);
            return cnx;
        } catch (SQLException | ClassNotFoundException e) {
             errorMessages.add(e.getMessage());
        }
        return null;
    }

    public List<String> getErrorMessages() {
        return errorMessages;
    }

    public int pruebaConexion() {
        Connection c = conecta();
        if (c != null) {
            return 1;
        } else {
            return 0;
        }
    }
}
