package tools;

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

            String host = "roundhouse.proxy.rlwy.net";
            int port = 44726;
            String dbName = "railway";
            String user = "root";
            String password = "ac135B66h3E5d-AAdhA1E3aDG112dE54";

            // Utiliza el formato de URL adecuado para tu host
            String url = String.format("jdbc:mysql://%s:%d/%s", host, port, dbName);

            cnx = DriverManager.getConnection(url, user, password);
            return cnx;
        } catch (SQLException | ClassNotFoundException e) {
            // Manejo de errores (puedes imprimir mensajes de error o lanzar excepciones según tus necesidades)
            e.printStackTrace();
        }
        return null;
    }
    
    public void cierraConexion() {
        try {
            if (cnx != null && !cnx.isClosed()) {
                cnx.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
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
