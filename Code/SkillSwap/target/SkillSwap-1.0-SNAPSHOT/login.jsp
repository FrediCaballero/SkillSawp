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
                                               
                <form class="login-inputs-container" method="get"> <!-- method="post"> -->
                    <div class="login-inputs">
                        <input class="input" name="email" type="text"  placeholder="Correo electrónico">
                        <input class="input" name="password" type="password"  placeholder="Contraseña">
                    </div>
                    <p>¿Has olvidado tu contraseña? <a class="login-link">Haz click aquí</a></p>
                    <button class="btn btn-login" type="submit">Acceder</button>
                    
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
    </body>
    
    <%@include file="footer.jsp" %>
    
</html>
