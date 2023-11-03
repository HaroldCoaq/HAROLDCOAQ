<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Procesar Registro de Cliente</title>
</head>
<body>
    <% 
    String nombre = request.getParameter("nombre");
    String apellido = request.getParameter("apellido");
    String direccion = request.getParameter("direccion");
    String correo = request.getParameter("correo");
    String telefono = request.getParameter("telefono");
    String dni = request.getParameter("dni");

    // Aquí deberías implementar la lógica para insertar estos datos en tu base de datos

    // Una vez registrado el cliente, puedes redirigir a la página de ventas o a otra página
    response.sendRedirect("ventas.jsp");
    %>
</body>
</html>
