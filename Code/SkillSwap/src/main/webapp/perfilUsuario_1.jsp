<%-- 
    Document   : perfilUsuario_1
    Created on : 17 nov. 2023, 02:33:48
    Author     : AlexanderCaballero
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
        <!--Menu Principal-->
        <%@include file="navbar.jsp" %>
        
        <div class="container emp-profile" >
            
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-img">
                        <img src="https://github.com/mdo.png" alt=""/>
                        <div class="file btn btn-lg btn-primary">
                            Cambiar foto
                            <input type="file" name="file"/>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-6">
                    <div class="profile-head">
                        <h4>
                            Juan Perez<br>
                        </h4>
                        
                        <p class="proile-rating">
                            CALIFICACION : <span>8/10</span>
                        </p>
                        
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Datos Personales</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Servicios</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" id="reto-tab" data-toggle="tab" href="#reto" role="tab" aria-controls="reto" aria-selected="false">Reto activo</a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" id="historia-tab" data-toggle="tab" href="#historia" role="tab" aria-controls="historia" aria-selected="false">Historial de retos</a>
                            </li>
                            
                            
                            <li class="nav-item">
                                <a class="nav-link" id="solicitudes-tab" data-toggle="tab" href="#solicitudes" role="tab" aria-controls="solicitudes" aria-selected="false">Solicitudes de contratos</a>
                            </li>

                        </ul>
                    </div>
                </div>
                
                <div class="col-md-2">
                    <button type="button" class="btn btn-success" name="btnAddMore" onclick="window.location.href='{{route('premium')}}'">
                        Hazte Premium
                    </button>
                    
                    <button type="button" class="profile-edit-btn" name="btnAddMore" data-toggle="modal" data-target="#myModal" >
                        Editar Perfil
                    </button>
                </div>
                
            </div>
            
            <div class="row">
                <div class="col-md-4">
                    <div class="profile-work">
                        <p>Mis contratos realizados</p>

                        <p>Contratos Pasados</p>
                   </div>
               </div>
                
                
                
            </div>

        </div>
        
        
        <!--Footer-->
        <%@include file="footer.jsp" %>
    </body>
</html>
