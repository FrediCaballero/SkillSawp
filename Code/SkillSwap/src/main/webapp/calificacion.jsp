<%-- 
    Document   : calificacion
    Created on : 17 nov 2023, 1:20:03
    Author     : EElite
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estrella</title>
        <%@include file="referencias.jsp" %>
    </head>
    <body class="calificacion">
        <div class="rating">
            <i class="bi bi-star-fill star"></i>
            <i class="bi bi-star-fill star"></i>
            <i class="bi bi-star-fill star"></i>
            <i class="bi bi-star-fill star"></i>
            <i class="bi bi-star-fill star"></i>
        </div>
        <script>
            const stars = document.querySelectorAll('.star');
            stars.forEach(function(star, index){
                star.addEventListener('click', function(){
                    for(let i=0; i<=index; i++){
                        stars[i].classList.add('checked');
                    }
                    for(let i=index+1; i<stars.length; i++){
                        stars[i].classList.remove('checked');
                    }
                })
            })
        </script>
    </body>
</html>