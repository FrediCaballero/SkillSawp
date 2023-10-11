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
    </head>
    <body>
        
        <%@include file="navbar.jsp" %>
        
        <div class="container mt-5 login">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">Iniciar Sesión</div>
                            <div class="card-body">
                                <form>
                                    <div class="mb-3">
                                        <label for="email" class="form-label">Correo Electrónico</label>
                                        <input type="email" class="form-control" id="email" name="email" required />
                                    </div>
                                    <div class="mb-3">
                                        <label for="password" class="form-label">Contraseña</label>
                                        <input type="password" class="form-control" id="password" name="password" required />
                                    </div>
                                    <button type="submit" class="btn btn-primary">
                                        Iniciar Sesión
                                    </button>
                                </form>
                            </div>
                        <div class="card-footer">
                            ¿No tienes una cuenta?
                            <a href="signUp.jsp">Regístrate aquí</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    
    <%@include file="footer.jsp" %>
    
</html>
