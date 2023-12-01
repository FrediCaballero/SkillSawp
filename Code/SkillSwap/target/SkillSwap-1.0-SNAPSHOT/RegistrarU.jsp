<%-- 
    Document   : Registrar Usuario
    Created on : 12 oct 2023, 19:04:08
    Author     : Juan Alfonso Caceres Estaña
--%>
<%@ page import="controller.VerificarUsuario"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="controller.Registro" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="controller.PasswordException" %>
<%@ page isErrorPage="true" %>
<%@ page import="controller.ValidadorContraseña" %>
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
                        <input type="password" placeholder="Contraseña" name="password" id="password">
                    </p>
                    <p>
                        <label>Confirmar Contraseña</label>
                        <input type="password" placeholder="Confirmar Contraseña" name="confirmPassword" id="confirmPassword">
                    </p>
                    <p id="passwordError" style="color: red;"></p>

                    <p class="block">
                        <button type="submit" value="Registrar" onclick="return validatePassword()">Enviar</button>
                    </p>

                </form>
            </div>
        </div>
        <%
            if (request.getMethod().equals("POST")) {
                try {
                    String name = request.getParameter("name");
                    String lastname = request.getParameter("lastname");
                    String email = request.getParameter("email");
                    String DNI = request.getParameter("DNI");
                    String birthdate = request.getParameter("birthdate");
                    String password = request.getParameter("password");
                    String confirmPassword = request.getParameter("confirmPassword");
                    // Verificar si el correo electrónico ya está registrado utilizando la clase VerificarUsuario
                    if (VerificarUsuario.correoEstaRegistrado(email)) {
                        throw new Exception("El correo electrónico ya está registrado.");
                    }
                    // Verificar si el DNI ya está registrado utilizando la clase VerificarUsuario
                    if (VerificarUsuario.dniEstaRegistrado(DNI)) {
                        throw new Exception("El DNI ya está registrado.");
                    }
                    // Validar la contraseña antes de enviar a la base de datos
                    ValidadorContraseña.validarContraseña(password, confirmPassword);

                    // Crear la instancia de Registro solo después de que todas las validaciones hayan pasado
                    Registro registro = new Registro();
                    registro.insertarUsuario(name, lastname, email, DNI, birthdate, password);

                    response.sendRedirect("index.jsp"); // Redirigir a una página de éxito
                } catch (PasswordException e) {
                    // Mostrar un mensaje de alerta del navegador
                    out.println("<script>alert('" + e.getMessage() + "');</script>");
                } catch (Exception e) {
                    // Mostrar un mensaje de alerta del navegador para otras excepciones
                    out.println("<script>alert('" + e.getMessage() + "');</script>");
                }
            }
        %>
        <script>
            // Mostrar ventana emergente con el mensaje de error si existe
            if (typeof errorMessage !== 'undefined') {
                var popup = window.open('', 'ErrorPopup', 'width=400,height=200');
                popup.document.write('<div style="text-align:center;margin-top:50px;">' + errorMessage + '<br><button onclick="window.close()">Entendido</button></div>');
            }
        </script>
        <%@include file="footer.jsp" %>
    </body>
</html>
