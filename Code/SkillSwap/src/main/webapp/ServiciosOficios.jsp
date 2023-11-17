<%-- 
    Document   : ServiciosOficios
    Created on : 16 nov. 2023, 20:58:16
    Author     : AlexanderCaballero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>SkillSwap</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body>
        <%@include file="navbar.jsp" %>

        <div class="container">
            <h1>Lista de Servicios</h1>

            <div class="row">
                <%-- Servicio 1 --%>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Servicio 1</h5>
                            <p class="card-text">Descripción del Servicio 1.</p>
                            <!-- Agrega más detalles o enlaces según sea necesario -->
                        </div>
                    </div>
                </div>

                <%-- Servicio 2 --%>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Servicio 2</h5>
                            <p class="card-text">Descripción del Servicio 2.</p>
                            <!-- Agrega más detalles o enlaces según sea necesario -->
                        </div>
                    </div>
                </div>

                <%-- Agrega más servicios aquí según sea necesario --%>
            </div>

            <!-- Repite la estructura de fila según sea necesario para 3 filas -->
            <div class="row">
                <%-- Servicio 3 --%>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Servicio 3</h5>
                            <p class="card-text">Descripción del Servicio 3.</p>
                            <!-- Agrega más detalles o enlaces según sea necesario -->
                        </div>
                    </div>
                </div>

                <%-- Servicio 4 --%>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Servicio 4</h5>
                            <p class="card-text">Descripción del Servicio 4.</p>
                            <!-- Agrega más detalles o enlaces según sea necesario -->
                        </div>
                    </div>
                </div>

                <%-- Agrega más servicios aquí según sea necesario --%>
            </div>

            <!-- Repite la estructura de fila según sea necesario para 3 filas -->
            <!-- Agrega más filas según sea necesario -->

        </div>

        <%@include file="footer.jsp" %>
    </body>
</html>

