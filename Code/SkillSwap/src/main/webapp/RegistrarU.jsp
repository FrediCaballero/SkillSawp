<%-- 
    Document   : Registrar Usuario
    Created on : 12 oct 2023, 19:04:08
    Author     : Juan Alfonso Caceres Estaña
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de Datos Personales</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="container_Registro">
            <h1>Registro de Datos Personales</h1>
            <div class="form-container-Resgitro">
                <form method="post">
                    <p>
                        <label>Nombre</label>
                        <input type="text" placeholder="Nombre" name="name">
                    </p>
                    <p>
                        <label>Apellido</label>
                        <input type="text" placeholder="Apellido" name="lastname">
                    </p>
                    <p>
                        <label>Correo Electronico</label>
                        <input type="email" placeholder="Correo Electronico" name="email">
                    </p>
                    <p>
                        <label>DNI</label>
                        <input type="text" placeholder="DNI" name="DNI">
                    </p>
                    <p>
                        <label>Fecha</label>
                        <input type="date" name="birthdate">
                    </p>
                    <p>
                        <label>Contraseña</label>
                        <input type="password" placeholder="Contraseña" name="password">
                    </p>
                    <p>
                        <label>Confirmar Contraseña</label>
                        <input type="password" placeholder="Confirmar Contraseña">
                    </p>
                    <p class="block">
                        <button type="submit" value="Registrar">Enviar</button>
                    </p>
                </form>
                
            </div>
        </div>
        <%@ page import="beans.Registro" %>
                <%
                    if (request.getMethod().equals("POST")) {
                        String name = request.getParameter("name");
                        String lastname = request.getParameter("lastname");
                        String email = request.getParameter("email");
                        String DNI = request.getParameter("DNI");
                        String birthdate = request.getParameter("birthdate");
                        String password = request.getParameter("password");
                        Registro.insertarUsuario(name, lastname, email, DNI, birthdate, password);
                        // Puedes redirigir al usuario a otra página o mostrar un mensaje de éxito aquí.
                    }
                %>
        <%@include file="footer.jsp" %>
    </body>
</html>
