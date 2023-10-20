<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de Servicios</title>
        <%@include file="referencias.jsp" %>
        <%@include file="scripPremium.jsp" %>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

           <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f1f1f1;
            margin: 0;
            padding: 0;
        }

        .page-wrapper {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .content-wrapper {
            flex-grow: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .card {
            width: 100%;
            max-width: 700px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        }

        .card-heading {
            background-color: #f9fafb;
            padding: 20px;
            border-top-left-radius: 10px;
            border-top-right-radius: 10px;
        }

        .card-heading h2 {
            margin: 0;
            font-size: 24px;
            color: #333;
        }

        .card-body {
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="number"],
        textarea,
        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        .btn_registro_servicio {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            font-size: 16px;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
        }

        .btn_registro_servicio:hover {
            background-color: #45a049;
        }

        .text-info {
            color: #007bff;
        }

        /* Estilos para el encabezado y el pie de página */
        header, footer {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
    </style>
    
    
    </head>

    <body>
        
                <!--Menu Principal-->
                <%@include file="navbar.jsp" %>
        
<div class="page-wrapper">

    <div class="content-wrapper">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Registre su servicio</h2>
                </div>
                <div class="card-body">
                    <form action="{{ route('servicio.tecnico') }}" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="servicioTecn">Seleccione su servicio técnico perteneciente</label>
                            <select class="form-control" id="servicioTecn" name="servicioTecn" required>
                                <option value="">Seleccione su servicio correspondiente</option>
                                <option value="A">Gasfitero de tuberías</option>
                                <option value="B">Reparador de computadoras</option>
                                <option value="C">Diseñador de ropa</option>
                                <option value="D">Estampador de polos</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="nombreTecn">Ingrese el nombre de su servicio</label>
                            <input class="form-control" id="nombreTecn" name="nombreTecn" type="text" required>
                        </div>
                        <div class="form-group">
                            <label for="detallesTecn">Ingrese los detalles de su servicio</label>
                            <textarea class="form-control" id="detallesTecn" name="detallesTecn" rows="3" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="costoTecn">Ingrese el costo de su servicio</label>
                            <input type="number" class="form-control" id="costoTecn" name="costoTecn" min="10" max="10000" required>
                        </div>
                        <div class="form-group">
                            <label for="imagenTecn">Ingrese una imagen referente de su servicio</label>
                            <input type="file" accept="image/bmp,image/jpeg,image/jpg,image/png" class="form-control-file" id="imagenTecn" name="imagenTecn" required>
                            <p class="text-info">Mínimo Tamaño: 256x256px<br> Máximo Tamaño: 2048x2048px</p>
                        </div>
                        <button type="submit" class="btn_registro_servicio btn-primary">Guardar servicio</button>
                    </form>
                </div>
            </div>
        </div>
    </div>


</div>

        <!--Footer-->
        <%@include file="footer.jsp" %>
    </body>
</html>
