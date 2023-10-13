<%-- 
    Document   : FormularioPago
    Created on : 12 oct 2023, 21:16:19
    Author     : EElite
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pago</title>
        <%@include file="referencias.jsp" %>
    </head>
<body>
    <h1 class="centered">Realizar Pago</h1>
    <form action="#" method="post" class="payment-form">
        <label for="pais" class="form-label">País:</label>
        <input type="text" id="pais" name="pais" class="form-input" required><br>

        <label for="tarjeta" class="form-label">Tipo de Tarjeta:</label>
        <select id="tarjeta" name="tarjeta" class="select-input" required>
            <option value="Visa">Visa</option>
            <option value="MasterCard">MasterCard</option>
            <option value="Otro">Otro</option>
        </select><br>

        <label for="numero_tarjeta" class="form-label">Número de Tarjeta:</label>
        <input type="text" id="numero_tarjeta" name="numero_tarjeta" class="form-input" required><br>

        <label for="cvc" class="form-label">CVC:</label>
        <input type="text" id="cvc" name="cvc" class="form-input" required><br>

        <label for="fecha_vencimiento" class="form-label">Fecha de Vencimiento:</label>
        <input type="text" id="fecha_vencimiento" name="fecha_vencimiento" class="form-input" placeholder="MM/AA" required><br>

        <label for="codigo_postal" class="form-label">Código Postal:</label>
        <input type="text" id="codigo_postal" name="codigo_postal" class="form-input" required><br>

        <input type="submit" value="Realizar Pago" class="form-submit">
    </form>
</body>
</html>
