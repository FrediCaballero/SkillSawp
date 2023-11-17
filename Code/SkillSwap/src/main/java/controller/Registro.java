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
    private static final String[] IMAGENES_ALEATORIAS = {
        "https://images.vexels.com/media/users/3/302018/isolated/lists/bb8be12335db97203de609cb3d90ec9f-dibujos-animados-retro-astronauta.png",
        "https://images.vexels.com/media/users/3/261822/isolated/lists/17516a03be5066ab8b15c440b4e078af-dibujos-animados-retro-de-bola-de-bolos.png",
        "https://images.vexels.com/media/users/3/322022/isolated/lists/42ed801f442e4ef7381793c37c9cdd4f-cumpleaa-os-de-dibujos-animados-retro-macaron.png",
        "https://images.vexels.com/media/users/3/317970/isolated/lists/3996d5a092af97bf8fdd0ca5b24140ef-cra-neo-de-dibujos-animados-retro-psicoda-lico.png",
        "https://images.vexels.com/media/users/3/246228/isolated/lists/468f8f62ff0bd2206ac46e0902d06dcb-dibujos-animados-retro-de-gameboy.png"
    };

    
    public void insertarUsuario(String name, String lastname, String email, String DNI, String birthdate, String password) {
        Connection connection = null;
        Conexion conexion = null;

        try {
            conexion = new Conexion();
            connection = conexion.conecta();

            String query = "INSERT INTO usuario (name, lastname, email, DNI, birthdate, password, imagen) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, name);
            statement.setString(2, lastname);
            statement.setString(3, email);
            statement.setString(4, DNI);
            statement.setString(5, birthdate);

            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
            statement.setString(6, hashedPassword);
            
            try {
                // Obtener una imagen aleatoria de la lista
                byte[] imagenBlob = obtenerImagenAleatoria();
                statement.setBytes(7, imagenBlob);
            } catch (IOException e) {
                e.printStackTrace();
                System.out.println("Error al obtener imagen aleatoria: " + e.getMessage());
            }

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
    
    private byte[] obtenerImagenAleatoria() throws IOException {
    Random random = new Random();
    int indice = random.nextInt(IMAGENES_ALEATORIAS.length);
    String urlImagenAleatoria = IMAGENES_ALEATORIAS[indice];

    // Descargar la imagen desde la URL y convertirla a un arreglo de bytes (BLOB)
    URL url = new URL(urlImagenAleatoria);
    try (InputStream inputStream = url.openStream();
         ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {

        byte[] buffer = new byte[1024];
        int bytesRead;
        while ((bytesRead = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, bytesRead);
        }

        return outputStream.toByteArray();
    }
}
}
