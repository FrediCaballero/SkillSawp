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
    
    <body class="cuerpo_filtro_servicios">
        <%@include file="navbar.jsp" %>
    <div class="pagina-principal">

    <div class="contenido-pagina">
        <div>
            <div class="tarjeta">
                <div class="tarjeta-encabezado">
                    <h2 class="title">Encuentra el servicio que deseas</h2>
                </div>
                <div class="tarjeta-contenido">
                    <form>
                        <div class="forma-grupo">
                            <label>Seleccione el tipo de servicio</label>
                            <select>
                                <option value="">Seleccione el tipo de servicio correspondiente</option>
                                <option value="A">Oficio</option>
                                <option value="B">Talento</option>
                            </select>
                        </div>
                        <div class="forma-grupo">
                            <label>Seleccione el nombre del servicio</label>
                            <select>
                                <option value="">Seleccione el nombre del servicio correspondiente</option>
                                    <option value="A">Clases particulares</option>
                                    <option value="B">Reparador de computadoras</option>
                                    <option value="C">Reparador de refrigeradoras</option>
                                    <option value="D">Tecnico de Autodesk</option>
                                    <option value="E">Profesor de matematicas</option>
                                    <option value="F">Asesor comercial</option>
                            </select>
                        </div>
                        <div class="forma-grupo">
                            <label>Ingrese el nombre de su servicio</label>
                            <input type="text">
                        </div>
                        
                        <div class="forma-grupo">
                            <label>Ingrese el rango de costo deseado</label>
                            <div class="input-container">
                                    <input type="number" min="10" max="10000" class="numero">
                                    <span>a</span>
                                    <input type="number" min="10" max="10000" class="numero">
                                </div>
                        </div>
                        
                        
                        <button type="submit" class="btn_buscar_servicio">Buscar servicio</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


    </div>
        <%@include file="footer.jsp" %>
    
    </body>
    
</html>
