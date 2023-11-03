<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Dao" %>
<%@ page import="dto.Producto" %>

<%
    Dao dao = new Dao();
    List<Producto> listaProductos = dao.obtenerProductos(); // Asegúrate de tener este método implementado en tu Dao.
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Nuevo Producto</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" href="plugin/components/Font Awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="plugin/whatsapp-chat-support.css">
</head>
<body>
	<jsp:include page="headerADM.jsp" />
	
	<div class="NP_BP">
    <h1>Agregar Nuevo Producto</h1>
    <form action="procesar_producto.jsp" method="post" style="display: flex; flex-direction: row; justify-content: space-between;">
        <div style="margin-right: 10px;">
            <label for="tipo">Tipo:</label>
            <select name="tipo" id="tipo" style="width: 150px;"> <!-- Ajusta el ancho según tus necesidades -->
                <option value="Computadora">Computadora</option>
                <option value="Laptop">Laptop</option>
                <option value="Monitor">Monitor</option>
                <option value="Impresora">Impresora</option>
                <option value="Accesorio">Accesorio</option>
            </select>
        </div>
        <div style="margin-right: 10px;">
            <label for="nombre">Marca:</label>
            <input type="text" name="nombre" id="nombre" style="width: 150px;"> <!-- Ajusta el ancho según tus necesidades -->
        </div>
        <div style="margin-right: 10px;">
            <label for="precio">Precio:</label>
            <input type="text" name="precio" id="precio" style="width: 150px;"> <!-- Ajusta el ancho según tus necesidades -->
        </div>
        <div style="margin-right: 10px;">
            <label for="stock">Stock:</label>
            <input type="text" name="stock" id="stock" style="width: 150px;"> <!-- Ajusta el ancho según tus necesidades -->
        </div>
        <input type="submit" value="Agregar Producto">
    </form>
</div>

	
	<div class="LP" >
		    <h1>Lista de Productos</h1>
		    
				<table border="1">
				    <tr>
				        <th>ID</th>
				        <th>Marca</th>
				        <th>Tipo</th>
				        <th>Precio</th>
				        <th>Stock</th>
				        <th>Acciones</th> <!-- Nuevo encabezado para acciones -->
				    </tr>
				    <% for (Producto producto : listaProductos) { %>
				        <tr>
				            <td><%= producto.getId() %></td>
				            <td><%= producto.getNombre() %></td>
				            <td><%= producto.getTipo() %></td>
				            <td><%= producto.getPrecio() %></td>
				            <td><%= producto.getStock() %></td>
				            <td>
				                <form action="buscar_producto.jsp" method="get">
				                    <input type="hidden" name="id" value="<%= producto.getId() %>">
				                    <input type="submit" value="Modificar">
				                </form>
				                <form action="eliminar_producto.jsp" method="post" onsubmit="return confirm('¿Estás seguro de que quieres eliminar este producto?');">
				                    <input type="hidden" name="id" value="<%= producto.getId() %>">
				                    <input type="submit" value="Eliminar">
				                </form>
				            </td>
				        </tr>
				    <% } %>
				</table>
				<h1>Buscar Producto</h1>
		<form action="buscar_producto_form.jsp" method="get">
		    <input type="submit" value="Buscar">
		</form>
		</div>
	
    <jsp:include page="footer.jsp" />
</body>
</html>
