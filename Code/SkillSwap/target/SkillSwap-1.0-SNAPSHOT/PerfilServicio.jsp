<%-- 
    Document   : PerfilServicio
    Created on : 12 oct. 2023, 23:58:07
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
        
        
        
        <%@include file="navbar.jsp" %>
        <h2 id="perfiles">Perfil de servicios</h2>
        <main>

    <div class="primer-servicio">
      
      <img src="images/Clases particulares.jpg" alt="Imagen de profesor particular" class="bordes-redondeados"> 
      
      <div class="titulo-a-la-derecha">CLASES PARTICULARES
        <div class="descripcion"><p>Profesor especializado en asignaturas como matematicas, razonamiento verbal e historia con 5 años de experiencia y una profunda dedicación a la formación de futuras generaciones </p></div>
      <div class="datos">
        <ul id="lista-gatos-aman">
          <li>Profesor: Eduardo Lopez</li>
          <li>Email: Eduardo@gmail.com</li>
          <li>Telefono: 941567890</li>
        </ul>
      </div>
    
        <button type="submit" class="boton">Contratar</button>

      </div>
      
    </div>

    </main>

    <br>


    <div class="primer-servicio">
      
      <img src="images/reparador de computadora.jpg" alt="Imagen de reparador" class="bordes-redondeados"> 
      
      <div class="titulo-a-la-derecha">REPARADOR DE COMPUTADORA
        <div class="descripcion"><p>Tecnico especializado en servicios de diagnóstico, reparación y mantenimiento de computadoras y dispositivos relacionados. Ha establecido un sólido historial de atención al cliente, manteniendo altos estándares de calidad en cada reparación y garantizando la satisfacción del cliente. </p></div>
      <div class="datos">
        <ul id="lista-gatos-aman">
          <li>Tecnico: Juan Garcia</li>
          <li>Email: Garcia@gmail.com</li>
          <li>Telefono: 980375450</li>
        </ul>
      </div>
    
        <button type="submit" class="boton">Contratar</button>

      </div>
      
    </div>
    
    <br>
     
    <%@include file="footer.jsp" %>
        
    </body>
    
    
    
</html>
