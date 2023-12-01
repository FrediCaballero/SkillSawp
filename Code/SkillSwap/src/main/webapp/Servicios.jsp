<%-- 
    Document   : CarritoDeCompras
    Created on : 16 nov. 2023, 22:25:55
    Author     : JP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SkillSwap</title>
    <%@include file="referencias.jsp" %>
    <%@include file="scripPremium.jsp" %>
    <%@include file="navbar.jsp" %>
</head>

<body>
   
    <div class="container_carrito">
        <h1></h1>
        
        <!-- Primera fila de productos -->
        <div class="row">
        <div class="col-md-4">

            <div class="product">
                <img src="images/CarritoElectricista.jpg" alt="CarritoElectricista1">
                <p>Técnico Electricista</p>
                <p class="price">$19.99</p>
                <a href="Detalles.jsp?servicioId=Electricista" class="add-to-cart">Ver Detalles</a>
            </div>
        </div>

        <div class="col-md-4">
        
            
            <div class="product">
                <img src="images/CarritoTelevisores.jpg" alt="CarritoTelevisores2">
                <p>Tecnico de Televisores</p>
                <p class="price">$29.99</p>
                <a href="Detalles.jsp?servicioId=TecnicoTelevisores" class="add-to-cart">Ver Detalles</a>
            </div>
        </div>   
            
        <div class="col-md-4">
    
            <div class="product">
                <img src="images/CarritoProfesor.jpg" alt="CarritoProfesor3">
                <p>Profesor de Matemáticas</p>
                <p class="price">$39.99</p>
                <a href="Detalles.jsp?servicioId=ProfesorMatematicas" class="add-to-cart">Ver Detalles</a>
            </div>
        </div>

        <!-- Segunda fila de productos -->
        <div class="row">
            <div class="col-md-4">

            <div class="product">
                <img src="images/CarritoRefrigerador.jpg" alt="CarritoRefrigerador4">
                <p>Técnico de Refrigeradoras</p>
                <p class="price">$49.99</p>
                <a href="Detalles.jsp?servicioId=TecnicoRefrigeradoras" class="add-to-cart">Ver Detalles</a>
            </div>
            </div>
            
            <div class="col-md-4">
            
            <div class="product">
                <img src="images/CarritoAsesor.jpg" alt="CarritoAsesor5">
                <p>Asesor de Tesis</p>
                <p class="price">$59.99</p>
                <a href="Detalles.jsp?servicioId=Asesor" class="add-to-cart">Ver Detalles</a>
            </div>
            </div>
            
            <div class="col-md-4">
            
            <div class="product">
                <img src="images/CarritoClases.jpg" alt="CarritoClases6">
                <p>Profesor Particular</p>
                <p class="price">$69.99</p>
                <a href="Detalles.jsp?servicioId=ProfesorParticular" class="add-to-cart">Ver Detalles</a>
            </div>
            </div>
        </div>


    </div>

    <script src="script.js"></script>
   
    <div>
    
        <%@include file="footer.jsp" %> 
    </div>
    </div>
    
</body>
</html>
