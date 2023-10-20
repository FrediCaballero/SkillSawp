<%-- 
    Document   : Logout
    Created on : 19 oct. 2023, 23:41:09
    Author     : AlexanderCaballero
--%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
// Cambia el estado de usuarioAutenticado a false
session.setAttribute("usuarioAutenticado", false);

// Redirige a la página de inicio u otra página después del cierre de sesión
response.sendRedirect("index.jsp");
%>

