<%@ page import="controller.ServiceController" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.HashMap" %>

<%
    // Obtén el parámetro del servicioId desde la URL
    String servicioId = request.getParameter("servicioId");

    // Crea una instancia del controlador
    ServiceController controller = new ServiceController();

    // Llama al método para obtener detalles
    Map<String, Object> detalles = controller.obtenerDetallesDelServicio(servicioId);

    // Verifica si se encontraron detalles
    if (detalles != null && !detalles.isEmpty()) {
        // Obtén los detalles
        String nombreTrabajador = (String) detalles.get("nombre");
        String telefono = (String) detalles.get("telefono");
        String descripcion = (String) detalles.get("descripcion");
        List<String> logros = (List<String>) detalles.get("logros");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SkillSwap - Detalles del Servicio</title>
    <%@include file="referencias.jsp" %>
    <%@include file="scripPremium.jsp" %>
    <%@include file="navbar.jsp" %>
    <style>
        .contratar-btn {
            display: flex;
            padding: 20px 40px; /* Ajusta el espacio interno para hacer el botón más grande */
            font-size: 20px; /* Ajusta el tamaño de la fuente */
            text-align: center;
            text-decoration: none;
            background-color: #6495ED;
            color: white;
            border: none;
            border-radius: 10px; /* Ajusta la curvatura de las esquinas */
            cursor: pointer;
            margin-top: 20px; /* Agrega espacio superior */
            margin: 0 auto; /* Centra horizontalmente el botón */
        }
    </style>
</head>

<body>
    <!-- Contenido de la página -->
    <div class="container">
        <h2>Detalles del Servicio</h2>
    <img class= "imagenDetalles" width="450" height="300" src="<%= detalles.get("imagen") %>" alt="Imagen del Servicio">

    <div class="texto">
        <p><strong>Nombre del Trabajador:</strong> <%= detalles.get("nombre") %></p>
        <p><strong>Teléfono:</strong> <%= detalles.get("telefono") %></p>
        <p><strong>Descripción:</strong> <%= detalles.get("descripcion") %></p>
        <!-- ... Agrega más detalles específicos para el servicio ... -->
                <h3>Objetivos</h3>
        <ul>
            <% for (String logro : logros) { %>
                <li><%= logro %></li>
            <% } %>
        </ul>
        <button class="contratar-btn">Contratar</button>

    </div>
    </div>
   

    <!-- Puedes agregar más contenido según sea necesario -->
    <%@include file="footer.jsp" %>
</body>
</html>

<%
    } else {
        // Si no se encuentran detalles, puedes mostrar un mensaje de error o redirigir a otra página
        response.sendRedirect("error.jsp");
    }
%>
