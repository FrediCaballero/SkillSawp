package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Conversacion;
import model.Mensaje;
import model.Usuario;
/**
 *
 * @author AlexanderCaballero
 */
public class BuzonController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        // Obtén el ID del usuario autenticado desde la sesión
        int userId = (int) session.getAttribute("userId");

        // Verifica si el usuario está autenticado
        if (userId > 0) {
            String action = request.getParameter("action");

            // Ejemplo de manejo de diferentes acciones
            if ("listConversations".equals(action)) {
                // Listar conversaciones del usuario
                ArrayList<Conversacion> conversaciones = Conversacion.listarConversaciones(userId);
                // Puedes pasar 'conversaciones' a la página JSP para mostrar la información
                request.setAttribute("conversaciones", conversaciones);
            } else if ("listUsers".equals(action)) {
                // Listar todos los usuarios (excepto el usuario autenticado)
                ArrayList<Usuario> usuarios = Usuario.listarUsuarios(userId);
                // Puedes pasar 'usuarios' a la página JSP para mostrar la información
                request.setAttribute("usuarios", usuarios);
            } else if ("viewMessages".equals(action)) {
                // Obtener el ID de la conversación desde los parámetros
                int idConversacion = Integer.parseInt(request.getParameter("idConversation"));

                // Visualizar mensajes de una conversación
                ArrayList<Mensaje> mensajes = Mensaje.visualizarMensajes(idConversacion);
                // Puedes pasar 'mensajes' a la página JSP para mostrar la información
                request.setAttribute("mensajes", mensajes);
            }
            // Agrega más condiciones según las acciones que necesites manejar

            // Redirige a la página de chat (buzon.jsp)
            request.getRequestDispatcher("buzon.jsp").forward(request, response);
        } else {
            // El usuario no está autenticado, redirige a la página de inicio de sesión
            response.sendRedirect("login.jsp");
        }
    }
}