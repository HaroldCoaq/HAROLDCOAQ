<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Buscar Producto</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" href="plugin/components/Font Awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="plugin/whatsapp-chat-support.css">
</head>
<body>

	<jsp:include page="headerADM.jsp" />
	<div class="PROD" >
    <h1>Buscar Producto</h1>
    <form action="buscar_producto.jsp" method="get">
        ID: <input type="text" name="id"><br>
        <input type="submit" value="Buscar">
    </form>
    </div>
    <jsp:include page="footer.jsp" />
    
</body>
</html>
