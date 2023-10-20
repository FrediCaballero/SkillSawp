<%-- Barra de navegación para usuarios no autenticados --%>
<% if (session.getAttribute("usuarioAutenticado") == null || !(boolean) session.getAttribute("usuarioAutenticado")) { %>
    <nav class="navbar navbar-expand-lg bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" alt="Logo"></a>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a href="PerfilServicio.jsp" class="nav-link active-page">Oficio</a>
                </li>
                <li class="nav-item">
                    <a href="PerfilServicio.jsp" class="nav-link active-page">Talento</a>
                </li>
                <li class="nav-item">
                    <a href="servicioRetos.jsp" class="nav-link active-page">Retos</a>
                </li>
                <li class="nav-item">
                    <a href="FiltroServicios.jsp" class="nav-link active-page">Categorias</a>
                </li>
            </ul>
            <div class="ml-auto navbar-buttons">
                <button type="button" class="btn btn-outline-light me-2" onclick="window.location.href = 'login.jsp';"> Login </button>
                <button type="button" class="btn btn-link custom-btn-link" onclick="window.location.href = 'RegistrarU.jsp';">Sign up</button>
            </div>
        </div>
    </nav>
<% } else { %>
    <%-- Barra de navegación para usuarios autenticados --%>
    <nav class="navbar navbar-expand-lg bg-primary">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" alt="Logo"></a>
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a href="PerfilServicio.jsp" class="nav-link active-page">Oficio</a>
                </li>
                <li class="nav-item">
                    <a href="PerfilServicio.jsp" class="nav-link active-page">Talento</a>
                </li>
                <li class="nav-item">
                    <a href="servicioRetos.jsp" class="nav-link active-page">Retos</a>
                </li>
                <li class="nav-item">
                    <a href="FiltroServicios.jsp" class="nav-link active-page">Categorias</a>
                </li>
                <li class="nav-item">
                    <a href="TablonDemandaServicios.jsp" class="nav-link active-page">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-table" viewBox="0 0 16 16">
                            <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
                        </svg>
                        Tablón
                    </a>
                </li>
            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a href="buzonClientes.jsp" class="nav-link active-page">Buzón Clientes</a>
                </li>
                <li class="nav-item">
                    <a href="registroDeServicios.jsp" class="nav-link active-page">Registrar Servicio</a>
                </li>
            </ul>
            <div class="flex-shrink-0 dropdown custom-dropdown">
                <a href="#" class="d-block link-body-emphasis text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
                </a>
                <ul class="dropdown-menu text-small shadow" data-popper-placement="bottom-end" style="position: absolute; inset: 0px 0px auto auto; margin: 0px; transform: translate3d(0px, 34px, 0px);">
                    <li><a class="dropdown-item" href="perfilUsuario.jsp"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Perfil</font></font></a></li>
                    <li><hr class="dropdown-divider"></li>
                    <li><a class="dropdown-item" href="logout.jsp"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Log Out</font></font></a></li>
                </ul>
            </div>
        </div>
    </nav>
<% } %>
