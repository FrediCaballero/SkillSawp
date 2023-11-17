package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import tools.Conexion;

/**
 *
 * @author AlexanderCaballero
 */
public class Usuario {
    private String email;
    private String password;
    
    public Usuario(){
        
    }
    
    public int getLogueado(String mail, String psw) {
        int logueado;
        try {
            Conexion c = new Conexion();
            Connection cnx = c.conecta();
            int cont = 0;
            String query = "Select * from acceso where email='"
                    + mail + "' and password='" + psw + "'";
            Statement sentencia = cnx.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            while (resultado.next()) {
                cont++;
            }
            if (cont!=0) {
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
}
