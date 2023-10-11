<%-- 
    Document   : index
    Created on : 10 oct. 2023, 01:19:26
    Author     : AlexanderCaballero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SkillSwap</title>
        <%@include file="referencias.jsp" %>
        
        <script>
        function abrirVentanaEmergente() {
            // Muestra la ventana emergente (elemento con el id "ventanaEmergente")
            document.getElementById("ventanaEmergente").style.display = "block";
        }

        function cerrarVentanaEmergente() {
            // Oculta la ventana emergente
            document.getElementById("ventanaEmergente").style.display = "none";
        }
        </script>
        
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <%@include file="footer.jsp" %>
    </body>
</html>
