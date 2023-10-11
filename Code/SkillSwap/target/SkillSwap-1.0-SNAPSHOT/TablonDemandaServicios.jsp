<%-- 
    Document   : TablonDemandaServicios
    Created on : 11/10/2023, 12:26:30 PM
    Author     : Claudia Magallanes Quiroz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de Servicios</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body>
        <!--Menu Principal-->
        <%@include file="navbar.jsp" %>
        
        
        <!--ESPECIALIDAD-->
        <div class="fondo-especialidad">
            <div class="text-especialidad">
            <h2>Tablón de Servicios Solicitados</h2>
            <hr>
            </div>
            <div class="galeria-especialidad">
                <aside>
                    <div class="img-espe">
                    <img src="images/diseño_grafico.jpg" alt="" >
                    </div>
                    <div class="cont-aside">
                    <h3>Profesor particular</h3>
                    <a href="">Ver detalles</a>
                    </div>
                </aside>

                <aside>
                    <div class="img-espe">
                    <img src="images/excel-completo.jpg" alt="" >
                    </div>
                    <div class="cont-aside">
                    <h3>Profesor de matemática</h3>
                    <a href="">Ver detalles</a>
                    </div>
                </aside>

                <aside>
                    <div class="img-espe">
                    <img src="images/webswite.jpg" alt="" >
                    </div>
                    <div class="cont-aside">
                    <h3>Reparador de refrigeradoras</h3>
                    <a href="">Ver detalles</a>
                    </div>
                </aside>

                <aside>
                    <div class="img-espe">
                    <img src="images/autodesk.jpg" alt="">
                    </div>
                    <div class="cont-aside">
                    <h3>Tecnico en autodesk</h3>
                    <a href="">Ver detalles</a>
                    </div>
                </aside>
                <aside>
                    <div class="img-espe">
                    <img src="images/diseño_grafico.jpg" alt="" >
                    </div>
                    <div class="cont-aside">
                    <h3>Profesor particular</h3>
                    <a href="">Ver detalles</a>
                    </div>
                </aside>

                <aside>
                    <div class="img-espe">
                    <img src="images/excel-completo.jpg" alt="" >
                    </div>
                    <div class="cont-aside">
                    <h3>Profesor de matemática</h3>
                    <a href="">Ver detalles</a>
                    </div>
                </aside>

                <aside>
                    <div class="img-espe">
                    <img src="images/webswite.jpg" alt="" >
                    </div>
                    <div class="cont-aside">
                    <h3>Reparador de refrigeradoras</h3>
                    <a href="">Ver detalles</a>
                    </div>
                </aside>

                <aside>
                    <div class="img-espe">
                    <img src="images/autodesk.jpg" alt="">
                    </div>
                    <div class="cont-aside">
                    <h3>Solicitar servicio</h3>
                    <a href="SolictarServicio.jsp">SOLICITAR</a>
                    </div>
                </aside>
            </div>
        </div>
             
        
        <!--Footer-->
        <%@include file="footer.jsp" %>
    </body>
</html>
