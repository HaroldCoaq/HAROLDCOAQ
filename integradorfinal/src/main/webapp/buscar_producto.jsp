<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Dao" %>
<%@ page import="dto.Producto" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Dao dao = new Dao();
    Producto producto = dao.buscarProducto(id);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Producto</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" href="plugin/components/Font Awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="plugin/whatsapp-chat-support.css">
</head>
<body>

	<jsp:include page="headerADM.jsp" />
	<div class="MP">
	    <h1>Modificar Producto</h1>
	    <form name="formularioModificacion" action="modificar_producto.jsp" method="post">
		    ID: <input type="text" name="id" value="<%= producto.getId() %>" readonly><br>
		    Marca: <input type="text" name="nombre" value="<%= producto.getNombre() %>"><br>
		    Tipo: <input type="text" name="tipo" value="<%= producto.getTipo() %>"><br>
		    Precio: <input type="text" name="precio" value="<%= producto.getPrecio() %>"><br>
		    Stock: <input type="text" name="stock" value="<%= producto.getStock() %>"><br>
	    <input type="submit" value="Modificar">
		</form>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>

