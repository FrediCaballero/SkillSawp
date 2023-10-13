<%-- 
    Document   : FiltroServicios
    Created on : 13 oct. 2023, 06:32:45
    Author     : migue
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
        
        <%@include file="navbarProfile.jsp" %>
        
        <h2>Filtro de Categorias</h2>
    <div>
        <p><b>Rango de precio</b></p>
        <input type="text" placeholder="Precio minimo" required> a <input type="text" placeholder="Precio maximo" required>
        <button type="submit">Buscar</button>
        <br>
        <br>
        <label for="categoria">Selecciona un oficio:</label>
        <select id="categoria">
            <option value="todos">Todos</option>
            <option value="categoria1">Clases Particulares</option>
            <option value="categoria2">Reparador de Computadoras</option>
        </select>

    </div>

    <br>

    <div>
        <label for="categoria">Selecciona un talento:</label>
        <select id="categoria">
            <option value="todos">Todos</option>
            <option value="categoria1">Talento numero uno</option>
            <option value="categoria2">Talento numero dos</option>
        </select>
    </div>

    <br>

    <div class="tabla-resultados">
      
        <img src="images/resultado.jpg" alt="Imagen de mujer trabajadora" class="bordes"> 
        
        <div class="titulo-derecha">Resultados
          
        <div class="resultados">
          <ol>
            <li>Resultado 1: xxxxxxxxxxxxxxxxxxxxxxxxxxx</li><button type="submit" class="boton">Ir</button>
            <li>Resultado 2: xxxxxxxxxxxxxxxxxxxxxxxxxxx</li><button type="submit" class="boton">Ir</button>
            <li>Resultado 3: xxxxxxxxxxxxxxxxxxxxxxxxxxx</li><button type="submit" class="boton">Ir</button>
          </ol>
        </div>
      
        </div>
        
      </div>
    <br>
    
    <%@include file="footer.jsp" %>
    </body>
</html>
