<div class="Form-Servicio">
        <h2>Solicitud de Servicio de Trabajo</h2>
        <form>
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" placeholder="Tu nombre" required>

            <label for="email">Correo Electr�nico:</label>
            <input type="email" id="email" name="email" placeholder="tu@email.com" required>

            <label for="telefono">Tel�fono de Contacto:</label>
            <input type="tel" id="telefono" name="telefono" placeholder="N�mero de tel�fono" required>

            <label for="servicio">Tipo de Servicio Requerido:</label>
            <select id="servicio" name="servicio">
                <option value="mantenimiento">Mantenimiento</option>
                <option value="reparacion">Reparaci�n</option>
                <option value="instalacion">Instalaci�n</option>
                <option value="otros">Otros</option>
            </select>

            <label for="mensaje">Mensaje o Detalles:</label>
            <textarea id="mensaje" name="mensaje" rows="4" placeholder="Escribe detalles adicionales aqu�"></textarea>

            <input type="submit" value="Publicar Solicitud">
        </form>
</div>

<br>
