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
            
        </div>
        <div class="nav-button">
            <button class="btn white-btn" id="loginBtn" onclick="login()">Iniciar Sesión</button>
            <button class="btn" id="registerBtn" onclick="register()">Registrarse</button>
        </div>
        <div class="nav-menu-btn">
            <i class="bx bx-menu" onclick="myMenuFunction()"></i>
        </div>
    </nav>
</body>
</html>