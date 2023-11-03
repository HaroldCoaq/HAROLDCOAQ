
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Dao" %>
<%@ page import="dto.Producto" %>

<%
    String nombre = request.getParameter("nombre");
    String tipo = request.getParameter("tipo");

    Dao dao = new Dao();
    List<Producto> resultados = dao.buscarProductosVentas(nombre, tipo); // Asegúrate de tener este método implementado en tu Dao.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" href="plugin/components/Font Awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="plugin/whatsapp-chat-support.css">
</head>
<body>
	<jsp:include page="headerCER.jsp" />
	<div class="BP">
		<h2>Buscar Producto</h2>
		<form action="" method="get" style="display: flex; justify-content: space-between;">
        <div style="margin-right: 10px;">
            <label for="nombre">Marca:</label>
            <input type="text" name="nombre" id="nombre">
        </div>
        <div style="margin-right: 10px;">
            <label for="tipo">Tipo:</label>
            <input type="text" name="tipo" id="tipo">
        </div>
        <input type="submit" value="Buscar" style="margin-top: 22px;">
    </form>	
	</div>
	
	<div class="RB">
    <h1>Resultados de Búsqueda</h1>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Marca</th>
            <th>Tipo</th>
            <th>Precio</th>
            <th>Stock</th>
            <th>Acciones</th>
        </tr>
        <% for (Producto producto : resultados) { %>
            <tr>
                <td><%= producto.getId() %></td>
                <td><%= producto.getNombre() %></td>
                <td><%= producto.getTipo() %></td>
                <td><%= producto.getPrecio() %></td>
                <td><%= producto.getStock() %></td>
                <td>
                    <form action="agregar_al_carrito.jsp" method="post">
                        <input type="hidden" name="id" value="<%= producto.getId() %>">
                        <input type="submit" value="Agregar al Carrito">
                    </form>
                </td>
            </tr>
        <% } %>
    </table>
    </div> 	
	
	<jsp:include page="footer.jsp" />
</body>
</html>