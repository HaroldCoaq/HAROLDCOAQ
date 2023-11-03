<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Producto" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="dto.Utilidades" %>

<%
    List<Producto> carrito = (List<Producto>) session.getAttribute("carrito");
    String nombreCliente = request.getParameter("nombreCliente");

    double total = Utilidades.calcularTotal(carrito);

    // Obtener la fecha actual
    Date fechaActual = new Date();
    SimpleDateFormat formatoFecha = new SimpleDateFormat("dd-MM-yyyy");
    String fecha = formatoFecha.format(fechaActual);

    // Limpiar el carrito después de la compra
    session.removeAttribute("carrito");
%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Boleta de Compra</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" href="plugin/components/Font Awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="plugin/whatsapp-chat-support.css">
</head>
<body>

	<jsp:include page="headerCER.jsp" />
	<div class="GB">
    <h1>Boleta de Compra</h1>
    <h2>Fecha de Compra: <%= fecha %></h2>
    <h2>Cliente: <%= nombreCliente %></h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Marca</th>
            <th>Tipo</th>
            <th>Precio</th>
            
        </tr>
        <% for (Producto producto : carrito) { %>
            <tr>
                <td><%= producto.getId() %></td>
                <td><%= producto.getNombre() %></td>
                <td><%= producto.getTipo() %></td>
                <td><%= producto.getPrecio() %></td>
                
            </tr>
        <% } %>
    </table>
    
    <h2>Total de la Venta: <%= total %></h2>
 	
    </div>
    
    <jsp:include page="footer.jsp" />
</body>
</html>
