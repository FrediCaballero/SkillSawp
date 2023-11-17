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
        <%@include file="VentanaContrato.jsp" %>

    </head>
    <body>
        
        
        
        <%@include file="navbar.jsp" %>
        
<br>
        <div class="sombra-azul">
        <div class="servicio-derecha">
        <div class="image-derecha">
        <img src="images/Clases particulares.jpg" alt="Imagen" class="bordes-redondeados">
        </div>
        <div class="content-derecha">
            <br>
            <h1><b>CLASES PARTICULARES</b></h1>
            <p class="descripcion">Profesor especializado en asignaturas como matematicas, razonamiento verbal e historia con 5 anos de experiencia y una profunda dedicacion a la formacion de futuras generaciones
            </p>
            <div class="datos">
                <ul id="lista-gatos-aman">
                  <li>Tecnico: Juan Garcia</li>
                  <li>Email: Garcia@gmail.com</li>
                  <div class="rating">
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                  </div>
                  <script>
                    // Función para establecer las estrellas según el número proporcionado
                    function setStars(number) {
                        const stars = document.querySelectorAll('.star');

                        stars.forEach(function(star, index) {
                            if (index < number) {
                                star.classList.add('checked');
                            } else {
                                star.classList.remove('checked');
                            }
                        });
                    }

                    // Llamada a la función con el número deseado
                    calificacionInicial = 3; // Puedes cambiar esto al número deseado
                    setStars(calificacionInicial);
                  </script>
                   <div class="boton-contratarservicio">
                       <% if (session.getAttribute("usuarioAutenticado") == null || !(boolean) session.getAttribute("usuarioAutenticado")) { %>
                        <button onclick="redirigirAPagina()">Contratar</button>
                        <script>
                        function redirigirAPagina() {
                            // Puedes cambiar la URL dentro de window.location.href a la página a la que deseas redirigir.
                            window.location.href = "login.jsp";
                        }
                        </script>
                       <% } else { %>
                        <button onclick="abrirVentanaContratacion();">Contratar</button>
                       <% } %>
                   </div>
                    <div id="ventanaContratacion" class="ventana-emergente ventana-contrato">
                        <div class="contenido">
                        <span class="cerrar" onclick="cerrarVentanaContratacion();">&times;</span>
                        <h2>Contrato de Servicio</h2>
                        <form action="procesar_contratacion.jsp" method="post">
                            <label for="nombre">Nombre:</label>
                            <input type="text" id="nombre" name="nombre" required>

                            <label for="correo">Correo Electrónico:</label>
                            <input type="email" id="correo" name="correo" required>
                            
                            <label for="Lugar">Lugar</label>
                            <input id="descripcion" name="descripcion" required>
                            
                            <label for="fecha">Fecha del servicio a realizar:</label>
                            <input type="date" id="fecha" name="fecha" required>
                           
                            <label for="descripcion1">Descripción del Servicio:</label>
                            <textarea id="descripcion1" name="descripcion1" class="descripcion1" required></textarea>


                            <!-- Otros campos relevantes para la contratación -->
                            
                            <div class="botones-container">
                            <button onclick="cerrarVentanaContratacion();" class="cancelar-btn">Cancelar</button>
                            <input type="submit" value="Contratar">
                            </div>
                        </form>
                    </div>
                </div>
                

                  </ul>
                  
                 
              </div>
        </div>
    </div>
</div>
    <br>

    <div class="sombra">

        <div class="container-izquierda">
            <div class="content-izquierda">
                <br>
                <h1><b>REPARADOR DE COMPUTADORAS</b></h1>
                <p class="descripcion">Tecnico especializado en servicios de diagnóstico, reparación y mantenimiento de computadoras y dispositivos relacionados. Ha establecido un sólido historial de atención al cliente, manteniendo altos estándares de calidad en cada reparación y garantizando la satisfacción del cliente.</p>
                <div class="datos">
                    <ul id="lista-gatos-aman">
                      <li>Tecnico: Eduardo Lopez</li>
                      <li>Email: Lopez@gmail.com</li>
                  <div class="rating">
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                  </div>
                  <script>
                    // Función para establecer las estrellas según el número proporcionado
                    function setStars(number) {
                        const stars = document.querySelectorAll('.star');

                        stars.forEach(function(star, index) {
                            if (index < number) {
                                star.classList.add('checked');
                            } else {
                                star.classList.remove('checked');
                            }
                        });
                    }

                    // Llamada a la función con el número deseado
                    calificacionInicial = 3; // Puedes cambiar esto al número deseado
                    setStars(calificacionInicial);
                  </script>
                   <div class="boton-contratarservicio">
                   <button onclick="abrirVentanaContratacion();">Contratar</button> 
                   </div>
                    <div id="ventanaContratacion" class="ventana-emergente ventana-contrato">
                        <div class="contenido">
                        <span class="cerrar" onclick="cerrarVentanaContratacion();">&times;</span>
                        <h2>Contrato de Servicio</h2>
                        <form action="procesar_contratacion.jsp" method="post">
                            <label for="nombre">Nombre:</label>
                            <input type="text" id="nombre" name="nombre" required>

                            <label for="correo">Correo Electrónico:</label>
                            <input type="email" id="correo" name="correo" required>
                            
                            <label for="Lugar">Lugar</label>
                            <input id="descripcion" name="descripcion" required>
                            
                            <label for="fecha">Fecha del servicio a realizar:</label>
                            <input type="date" id="fecha" name="fecha" required>
                           
                            <label for="descripcion1">Descripción del Servicio:</label>
                            <textarea id="descripcion1" name="descripcion1" class="descripcion1" required></textarea>


                            <!-- Otros campos relevantes para la contratación -->

                            <div class="botones-container">
                            <button onclick="cerrarVentanaContratacion();" class="cancelar-btn">Cancelar</button>
                            <input type="submit" value="Contratar">
                            </div>
                        </form>
                    </div>
                </div>
                      </ul>
                      
                  </div>
            </div>
            <div class="image-izquierda">
                <img src="images/reparador de computadora.jpg" alt="Imagen de tecnico" class="bordes-redondeados">
            </div>
        </div>
    </div>
    
    <br>
        <div class="sombra-azul">
        <div class="servicio-derecha">
        <div class="image-derecha">
            <img src="images/refrigerador.jpg" alt="Imagen" class="bordes-redondeados">
        </div>
        <div class="content-derecha">
            <br>
            <h1><b>REPARADOR DE REFRIGERADORAS</b></h1>
            <p class="descripcion">Tecnico especializado en servicios de reparación y mantenimiento de refrigeradoras. Su enfoque principal es la satisfacción del cliente y entiende la importancia de tener una refrigeradora en funcionamiento, especialmente en situaciones de emergencia, y siempre se esfuerza al máximo para proporcionar soluciones rápidas y eficientes.
            </p>
            <div class="datos">
                <ul id="lista-gatos-aman">
                  <li>Tecnico: Manolo Garcia</li>
                  <li>Email: Manolo@gmail.com</li>
                                    <div class="rating">
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                  </div>
                  <script>
                    // Función para establecer las estrellas según el número proporcionado
                    function setStars(number) {
                        const stars = document.querySelectorAll('.star');

                        stars.forEach(function(star, index) {
                            if (index < number) {
                                star.classList.add('checked');
                            } else {
                                star.classList.remove('checked');
                            }
                        });
                    }

                    // Llamada a la función con el número deseado
                    calificacionInicial = 3; // Puedes cambiar esto al número deseado
                    setStars(calificacionInicial);
                  </script>
                   <div class="boton-contratarservicio">
                   <button onclick="abrirVentanaContratacion();">Contratar</button> 
                   </div>
                    <div id="ventanaContratacion" class="ventana-emergente ventana-contrato">
                        <div class="contenido">
                        <span class="cerrar" onclick="cerrarVentanaContratacion();">&times;</span>
                        <h2>Contrato de Servicio</h2>
                        <form action="procesar_contratacion.jsp" method="post">
                            <label for="nombre">Nombre:</label>
                            <input type="text" id="nombre" name="nombre" required>

                            <label for="correo">Correo Electrónico:</label>
                            <input type="email" id="correo" name="correo" required>
                            
                            <label for="Lugar">Lugar</label>
                            <input id="descripcion" name="descripcion" required>
                            
                            <label for="fecha">Fecha del servicio a realizar:</label>
                            <input type="date" id="fecha" name="fecha" required>
                           
                            <label for="descripcion1">Descripción del Servicio:</label>
                            <textarea id="descripcion1" name="descripcion1" class="descripcion1" required></textarea>


                            <!-- Otros campos relevantes para la contratación -->

                            <div class="botones-container">
                            <button onclick="cerrarVentanaContratacion();" class="cancelar-btn">Cancelar</button>
                            <input type="submit" value="Contratar">
                            </div>
                        </form>
                    </div>
                </div>
                  </ul>
                  
              </div>
        </div>
    </div>
</div>
    
    <br>

    <div class="sombra">

        <div class="container-izquierda">
            <div class="content-izquierda">
                <br>
                <h1><b>TECNICO DE AUTODESK</b></h1>
                <p class="descripcion">Profesional que tiene experiencia y habilidades en el uso de software y aplicaciones desarrolladas por Autodesk. Crea documentación técnica detallada, como planos, listas de materiales y especificaciones, para respaldar el desarrollo y la construcción de proyectos.</p>
                <div class="datos">
                    <ul id="lista-gatos-aman">
                      <li>Tecnico: jeremy inga</li>
                      <li>Email: inga@gmail.com</li>
                                        <div class="rating">
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                  </div>
                  <script>
                    // Función para establecer las estrellas según el número proporcionado
                    function setStars(number) {
                        const stars = document.querySelectorAll('.star');

                        stars.forEach(function(star, index) {
                            if (index < number) {
                                star.classList.add('checked');
                            } else {
                                star.classList.remove('checked');
                            }
                        });
                    }

                    // Llamada a la función con el número deseado
                    calificacionInicial = 3; // Puedes cambiar esto al número deseado
                    setStars(calificacionInicial);
                  </script>
                   <div class="boton-contratarservicio">
                   <button onclick="abrirVentanaContratacion();">Contratar</button> 
                   </div>
                    <div id="ventanaContratacion" class="ventana-emergente ventana-contrato">
                        <div class="contenido">
                        <span class="cerrar" onclick="cerrarVentanaContratacion();">&times;</span>
                        <h2>Contrato de Servicio</h2>
                        <form action="procesar_contratacion.jsp" method="post">
                            <label for="nombre">Nombre:</label>
                            <input type="text" id="nombre" name="nombre" required>

                            <label for="correo">Correo Electrónico:</label>
                            <input type="email" id="correo" name="correo" required>
                            
                            <label for="Lugar">Lugar</label>
                            <input id="descripcion" name="descripcion" required>
                            
                            <label for="fecha">Fecha del servicio a realizar:</label>
                            <input type="date" id="fecha" name="fecha" required>
                           
                            <label for="descripcion1">Descripción del Servicio:</label>
                            <textarea id="descripcion1" name="descripcion1" class="descripcion1" required></textarea>


                            <!-- Otros campos relevantes para la contratación -->

                            <div class="botones-container">
                            <button onclick="cerrarVentanaContratacion();" class="cancelar-btn">Cancelar</button>
                            <input type="submit" value="Contratar">
                            </div>
                        </form>
                    </div>
                </div>                      
                      </ul>
                      
                  </div>
            </div>
            <div class="image-izquierda">
                <img src="images/autodesk.jpg" alt="Imagen de tecnico" class="bordes-redondeados">
            </div>
        </div>
    </div>
    
        
<br>
        <div class="sombra-azul">
        <div class="servicio-derecha">
        <div class="image-derecha">
            <img src="images/Profesordematematicas.jpg" alt="Imagen" class="bordes-redondeados">
        </div>
        <div class="content-derecha">
            <br>
            <h1><b>PROFESOR DE MATEMATICAS</b></h1>
            <p class="descripcion">Educador que se dedica a enseñar matemáticas a estudiantes de diferentes niveles, desde la educación primaria hasta la educación superior. Capaz de explicar conceptos matemáticos de manera clara y comprensible para estudiantes de diferentes niveles de habilidad y comprensión.
            </p>
            <div class="datos">
                <ul id="lista-gatos-aman">
                  <li>Profesor: Gabriel gomez</li>
                  <li>Email: Gabriel@gmail.com</li>
                                    <div class="rating">
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                  </div>
                  <script>
                    // Función para establecer las estrellas según el número proporcionado
                    function setStars(number) {
                        const stars = document.querySelectorAll('.star');

                        stars.forEach(function(star, index) {
                            if (index < number) {
                                star.classList.add('checked');
                            } else {
                                star.classList.remove('checked');
                            }
                        });
                    }

                    // Llamada a la función con el número deseado
                    calificacionInicial = 3; // Puedes cambiar esto al número deseado
                    setStars(calificacionInicial);
                  </script>
                   <div class="boton-contratarservicio">
                   <button onclick="abrirVentanaContratacion();">Contratar</button> 
                   </div>
                    <div id="ventanaContratacion" class="ventana-emergente ventana-contrato">
                        <div class="contenido">
                        <span class="cerrar" onclick="cerrarVentanaContratacion();">&times;</span>
                        <h2>Contrato de Servicio</h2>
                        <form action="procesar_contratacion.jsp" method="post">
                            <label for="nombre">Nombre:</label>
                            <input type="text" id="nombre" name="nombre" required>

                            <label for="correo">Correo Electrónico:</label>
                            <input type="email" id="correo" name="correo" required>
                            
                            <label for="Lugar">Lugar</label>
                            <input id="descripcion" name="descripcion" required>
                            
                            <label for="fecha">Fecha del servicio a realizar:</label>
                            <input type="date" id="fecha" name="fecha" required>
                           
                            <label for="descripcion1">Descripción del Servicio:</label>
                            <textarea id="descripcion1" name="descripcion1" class="descripcion1" required></textarea>


                            <!-- Otros campos relevantes para la contratación -->

                            <div class="botones-container">
                            <button onclick="cerrarVentanaContratacion();" class="cancelar-btn">Cancelar</button>
                            <input type="submit" value="Contratar">
                            </div>
                        </form>
                    </div>
                </div>                  
                  </ul>
                  
              </div>
        </div>
    </div>
</div>
    
    <br>

    <div class="sombra">

        <div class="container-izquierda">
            <div class="content-izquierda">
                <br>
                <h1><b>ASESOR COMERCIAL</b></h1>
                <p class="descripcion">Profesional que trabaja en ventas, capaz de identificar oportunidades de negocio, establecer relaciones con clientes potenciales y existentes. Tiene un conocimiento sólido del mercado y la competencia para adaptar estrategias de ventas y abordar las necesidades cambiantes de los clientes.</p>
                <div class="datos">
                    <ul id="lista-gatos-aman">
                      <li>Tecnico: Amanda Mori</li>
                      <li>Email: Mori@gmail.com</li>
                                        <div class="rating">
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                    <i class="bi bi-star-fill star"></i>
                  </div>
                  <script>
                    // Función para establecer las estrellas según el número proporcionado
                    function setStars(number) {
                        const stars = document.querySelectorAll('.star');

                        stars.forEach(function(star, index) {
                            if (index < number) {
                                star.classList.add('checked');
                            } else {
                                star.classList.remove('checked');
                            }
                        });
                    }

                    // Llamada a la función con el número deseado
                    calificacionInicial = 3; // Puedes cambiar esto al número deseado
                    setStars(calificacionInicial);
                  </script>
                   <div class="boton-contratarservicio">
                   <button onclick="abrirVentanaContratacion();">Contratar</button> 
                   </div>
                    <div id="ventanaContratacion" class="ventana-emergente ventana-contrato">
                        <div class="contenido">
                        <span class="cerrar" onclick="cerrarVentanaContratacion();">&times;</span>
                        <h2>Contrato de Servicio</h2>
                        <form action="procesar_contratacion.jsp" method="post">
                            <label for="nombre">Nombre:</label>
                            <input type="text" id="nombre" name="nombre" required>

                            <label for="correo">Correo Electrónico:</label>
                            <input type="email" id="correo" name="correo" required>
                            
                            <label for="Lugar">Lugar</label>
                            <input id="descripcion" name="descripcion" required>
                            
                            <label for="fecha">Fecha del servicio a realizar:</label>
                            <input type="date" id="fecha" name="fecha" required>
                           
                            <label for="descripcion1">Descripción del Servicio:</label>
                            <textarea id="descripcion1" name="descripcion1" class="descripcion1" required></textarea>


                            <!-- Otros campos relevantes para la contratación -->

                            <div class="botones-container">
                            <button onclick="cerrarVentanaContratacion();" class="cancelar-btn">Cancelar</button>
                            <input type="submit" value="Contratar">
                            </div>
                        </form>
                    </div>
                </div>                      
                      </ul>
                      
                  </div>
            </div>
            <div class="image-izquierda">
                <img src="images/asesorventas.jpg" alt="Imagen de tecnico" class="bordes-redondeados">
            </div>
        </div>
    </div>
      
     
    
    <br>

   
     
    <%@include file="footer.jsp" %>
        
    </body>
    
    
    
</html>
