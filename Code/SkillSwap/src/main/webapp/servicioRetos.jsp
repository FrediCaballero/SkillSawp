<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla de Servicios</title>
        <%@include file="referencias.jsp" %>
        <%@include file="scripPremium.jsp" %>
        <style>
         body {
  font-family: Arial, sans-serif;
}

/* Estilos para la imagen de fondo */
.fondo-imagen {
  width: 100%;
  height: 315px; 
  background-size: cover;
  display: flex;
  align-items: center;
  justify-content: center;
}

/* Estilos para el modal */
.modal-content {
  border-radius: 1rem;
}

/* Estilos para la tarjeta */  
.card {
  border: 1px solid #e5e5e5;
  border-radius: 0.5rem;
}

/* Estilos para los titulos */
h1, h2, h3, h4, h5 {
  color: #333;
}

/* Estilos para los botones */ 
button {
  border-radius: 0.5rem;
  padding: 10px 20px;
}

button:hover {
  opacity: 0.8;
}
            </style>
            
    </head>
    <body>
    <!--Menu Principal-->
    <%@include file="navbarProfile.jsp" %>
    
    <div class="modal fade" id="modalInsertVideo" tabindex="-1" role="dialog"aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="modalInsertVideoTitle">Subir video</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{ route('upload.video.25.percentaje') }}" method="POST" enctype="multipart/form-data">
            @csrf

        <div class="modal-body container">

            <label for="">Insertar url del video de YOUTUBE : </label>
                <input type="hidden" required class="form-control" name="idService" value="{{ $serviceProfile->id }}">

                <input type="url" required class="form-control" name="urlVideo" max="255">
                @error('urlVideo')
                <div class="alert alert-danger" role="alert">
                  <strong>Atención.</strong> {{ $message }}.
                  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                @enderror
        </div>
        <div class="modal-footer">
          {{-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button> --}}
          <button type="submit" class="btn btn-primary">Subir video</button>
        </div>
        </form>

      </div>
    </div>
  </div>

    <div class="row" style="margin-right: 0px">

        <div class="col-12">
            <section class="py-5">
                <div class="container px-4 px-lg-5 my-5">
                    <div class="row gx-4 gx-lg-5 align-items-center">

                        <div class="col-md-6">
                            


<div style="background-image: url('https://www.lolitamoda.com/uploads/post/image/82/38.estilos_para_vestir_camisetas_polo.jpg'); width: 100%; height: 315px; background-size: cover;""></div>
                                <br>



                        </div>
                        <div class="col-md-6">
                            <h1 class="display-5 fw-bolder">Regalar 5 mil polos</h1>

                            <a href="{{ route('perfil',$serviceProfile->IntermediateUseOcc->id) }}" class="h5 fw-bolder">Juan Perez</a>
                            <br>
                            <label><strong>Email : &nbsp;</strong> </label> juanPerez@hotmail.com <label></label>
                            <br>
                            <label><strong>Año de nacimiento : &nbsp;</strong> </label> 25 de noviembre de 1997  <label></label>
                            <br>
                            <div class="card text-center">
                                <div class="card-header">
                                  <ul class="nav nav-tabs card-header-tabs">
                                    <li class="nav-item">

                                        <a class="nav-link active" aria-current="true" href="">Servicio</a>

                                    </li>
                                  </ul>
                                </div>
                                <div class="col-12 col-sm-12 col-md-10 col-lg-10">
                                    <ul>
                                        Hago polos y estaré regalando 5 mil por navidad. Feliz navidad!
                                    </ul>
                                </div>
                                <div class="card-body">

                                  <p class="card-text"></p>
                                  <span class="ksr-green-700 inline-block bold type-16 type-28-md">
                                  <span class="ksr-green-500">S/100.00</span>
                                  </span>
                                  <p class="card-text">contribuido de <span class="money">S/ 1500.00 </span></p>
                                  <div class="block type-16 type-28-md bold dark-grey-500"><span> 26 </span></div>
                                  <p class="card-text">patrocinadores</p>

                                  <div class="">

                                    





                                            </div>


                                            
                                             <div class="col-md-12">
                                                <div class="tab-content" id="nav-tabContent">

                                                  
                                                    <div class="tab-pane fade show active" id="nav-stripe" role="tabpanel" aria-labelledby="nav-profile-tab">
                                                        <br>
                                                        

                                                        <form action="" method="POST">

                                                            <input type="hidden" name="serviceOffer" value="{{ $serviceProfile->id }}">
                                                            <input type="hidden" name="cantidadMeta" value="{{ $serviceProfile->precio }}">
                                                            <input type="hidden" name="cantidadActual" value="{{ $serviceProfile->precio_actual }}">
                                                            <input type="number" name="cantidadDonacion" required step="0.01" min="1" max="{{ $serviceProfile->precio-$serviceProfile->precio_actual }}" class="form-control" placeholder="Insertar cantidad a donar">
                                                            
                                       



                                                            <br>
                                                            
                                                            <script>
                                                                // Esconde el button por defecto
                                                                document.getElementsByClassName("stripe-button-el")[0].style.display = 'none';
                                                            </script>
                                                            <button type="submit" class="bttn bttn-primary theme--create bttn-large flex mb3 keyboard-focusable">
                                                                Patrocina este proyecto (stripe)
                                                            </button>


                                                        </form>
                                   

                                                    </div>
                                                </div>
                                             </div>
                                            

                                        </div>


                                </div>
                                </div>
                              </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>

    <div class="row">
    </div>

    <!-- Product section-->


    
    
    <!--Footer-->
    <%@include file="footer.jsp" %>
    </body>
</html>


