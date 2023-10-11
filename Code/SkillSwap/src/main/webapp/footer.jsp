<div class="informacion">
    <div class="container"><br><br>
        <div class="row">
            <div class="col-md-3 col-sm-6">
                <div class="footer-about-us">
                    <h2>Skill<span>Swap</span></h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste.</p>
                    <div class="footer-social">
                        <a href="#" target="_blank"><em class="fa fa-facebook"></em></a>
                        <a href="#" target="_blank"><em class="fa fa-twitter"></em></a>
                        <a href="#" target="_blank"><em class="fa fa-youtube"></em></a>
                        <a href="#" target="_blank"><em class="fa fa-linkedin"></em></a>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">Navegación </h2>
                    <ul>
                        <li><a href="login.jsp">Login</a></li>
                        <li><a href="signUp.jsp">Sign Up</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-menu">
                    <h2 class="footer-wid-title">Categorias</h2>
                    <ul>
                        <li><a href="#">Oficios</a></li>
                        <li><a href="#">Talentos</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6">
                <div class="footer-newsletter">
                    <h2 class="footer-wid-title">Premium</h2>
                    <p>Subscribete a nuestra versión premium para acceder a mayores beneficios!</p>
                    <div class="newsletter-form">
                        <!--<input type="submit" onclick="window.location.href='#'" value="Subscribete">-->
                        <button onclick="abrirVentanaEmergente();">Suscribirse a Premium</button>
                        
                        <div id="ventanaEmergente" class="ventana-emergente">
                                <div class="contenido">
                                    <span class="cerrar" onclick="cerrarVentanaEmergente();">&times;</span>
                                    <h2>Suscripción Premium</h2>
                                    <form action="procesar_suscripcion.jsp" method="post">
                                        <label for="nombre">Nombre:</label>
                                        <input type="text" id="nombre" name="nombre" required>

                                        <label for="correo">Correo Electrónico:</label>
                                        <input type="email" id="correo" name="correo" required>
                                        
                                        <label for="numero_cuenta">Numero de Cuenta:</label>
                                        <input type="text" id="cuenta" name="cuenta" required>

                                        <label for="metodo_pago">Método de Pago:</label>
                                        <select id="metodo_pago" name="metodo_pago">
                                            <option value="tarjeta">Tarjeta de Crédito</option>
                                            <option value="paypal">PayPal</option>
                                        </select>
                                        <br>
                                        <input type="submit" value="Suscribirse">
                                    </form>
                                </div>
                            </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 <div class="creditos">
    <center>
        <p class="cred_infra">&copy; 2023 SkillSwap. Todos los derechos reservados. Grupo 9 - Taller de Desarrollo Web - FISI - UNMSM </p>
    </center>
 </div>