<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Producto" %>
<%@ page import="dto.Utilidades" %>
<%
    List<Producto> carrito = (List<Producto>) session.getAttribute("carrito");
%>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CARRITO DE COMPRAS</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" href="plugin/components/Font Awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="plugin/whatsapp-chat-support.css">
    
</head>
<body>
	<jsp:include page="headerCER.jsp" />
	<div class="carro">
    <h1>Carrito de Compras</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Marca</th>
            <th>Tipo</th>
            <th>Precio</th>
           
        </tr>
        <% if (carrito != null && !carrito.isEmpty()) { %>
            <% for (Producto producto : carrito) { %>
                <tr>
                    <td><%= producto.getId() %></td>
                    <td><%= producto.getNombre() %></td>
                    <td><%= producto.getTipo() %></td>
                    <td><%= producto.getPrecio() %></td>
                    
                </tr>
            <% } %>
        <% } else { %>
            <tr>
                <td colspan="5">El carrito está vacío</td>
            </tr>
        <% } %>
    </table>
    <%
    double total = 0.0;
    if (carrito != null && !carrito.isEmpty()) {
        for (Producto producto : carrito) {
            total += producto.getPrecio();
        }
    }
%>

<h2>Total del Carrito: <%= total %></h2>
    
    <form action="generar_boleta.jsp" method="post">
        <label for="nombreCliente">Nombre del Cliente:</label>
        <input type="text" id="nombreCliente" name="nombreCliente" value="<%= request.getSession().getAttribute("username") + " " + request.getSession().getAttribute("apellidos") %>" required>
        <input type="submit" value="Comprar">
        <a href="buscar_producto_ventas.jsp" class="boton-redireccion">Agregar mas productos</a>
    </form>
    
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>
