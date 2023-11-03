<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/b9fd02e7c2.js" crossorigin="anonymous"></script> <!-- iconos -->
</head>
<body>
	<nav class="nav" id="header">
        <div class="nav-logo">
            <div class="logo">
                    <img src="img/logo.png" alt="">
                </div>
        </div>
        <div class="nav-menu" id="navMenu">
            <ul>
                                
                <li><a href="ventas.jsp" class="link">Comprar</a></li>
                <li><a href="" class="link">Nosotros</a></li>
                <li><a href="contacto.jsp" class="link">Contáctanos</a></li>
                <li><a href="login.jsp" class="link active">Cerrar Sesión</a></li>
                <li style="color: white;">Bienvenido: <span class="username"><%= request.getSession().getAttribute("username") %></span></li>	
            </ul>
        </div>
    </nav>
</body>
</html>