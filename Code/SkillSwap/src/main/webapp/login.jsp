<%-- 
    Document   : login
    Created on : 10 oct. 2023, 03:04:24
    Author     : AlexanderCaballero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SkillSwap</title>
        <%@include file="referencias.jsp" %>
        <%@include file="scripPremium.jsp" %>
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>
        
        
        <div class="login-container">
            <div class="login-info-container">
                <h1 class="login-title">Iniciar Sesión</h1>
                                               
                <form class="login-inputs-container" method="post"> 
                    <div class="login-inputs">
                        <input class="input" name="email" type="email"  placeholder="Correo electrónico">
                        <input class="input" name="password" type="password"  placeholder="Contraseña">
                    </div>
                    
                    <%@ page import="beans.Autenticacion" %>
                    <%
                    if (request.getMethod().equals("POST")) {
                        String email = request.getParameter("email");
                        String contrasena = request.getParameter("password");

                        Autenticacion autenticacion = new Autenticacion();
                        boolean autenticado = autenticacion.autenticarUsuario(email, contrasena);

                        if (autenticado) {
                            // Usuario autenticado, puedes redirigirlo a su página de perfil o realizar acciones de autenticación
                            response.sendRedirect("perfilUsuario.jsp");
                        } else {
                            // Las credenciales no son válidas, puedes mostrar un mensaje de error
                            out.println("Credenciales incorrectas. Inténtalo de nuevo.");
                        }
                    }
                    %>
                    
                    <p>¿Has olvidado tu contraseña? <a class="login-link">Haz click aquí</a></p>
                    <input class="btn btn-login" type="submit" value="Acceder" 
                           style="letter-spacing: 1px; 
                           text-transform: uppercase;
                            border-radius: 5px;
                            background-color: var(--button-bg);
                            margin-top: 15px;
                            margin-bottom: 15px;"
                    >
                    
                    <p>O</p>
                    
                    <div class="social-login">
                        <div class="social-login-element">
                            <img src="images/google.svg" alt="google-image"/>
                            <span>Google</span>
                        </div>
                        <div class="social-login-element">
                            <img src="images/facebook.svg" alt="fb-image"/>
                            <span>Facebook</span>
                        </div>
                    </div>
                    
                    <p>¿No tienes una cuenta? <a href="RegistrarU.jsp" class="login-link" >Registrate aquí</a></p>
                </form>
            </div>
            <img class="image-container" src="images/Login-amico.svg" alt="login-image"/>
        </div>
        <%@include file="footer.jsp" %>
    </body>
   
    
</html>
