<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CONTACTANOSEL</title>
<link rel="stylesheet" type="text/css" href="css/contacto.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body >
	<jsp:include page="headerCER.jsp" />
	
	<div class="container">
        <div class="box-info">
            <h1>CONTÁCTATE CON NOSOTROS</h1>
            <div class="data">
                <p><i class="fa-solid fa-phone"></i> +51 987867534</p>
                <p><i class="fa-solid fa-envelope"></i> rematazo@gmail.com</p>
                <p><i class="fa-solid fa-location-dot"></i> Mercaderes 401</p>
            </div>
            <div class="links">
                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                <a href="#"><i class="fa-brands fa-instagram"></i></a>
                <a href="#"><i class="fa-brands fa-whatsapp"></i></a>             
            </div>
        </div>
        <form>
            <div class="input-box">
                <input type="text" placeholder="Nombre y apellido" required>
            </div>
            <div class="input-box">
                <input type="email" required placeholder="Correo electrónico">
            </div>
            <div class="input-box">
                <input type="text" placeholder="Asunto">
            </div>
            <div class="input-box">
                <textarea placeholder="Escribe tu mensaje..."></textarea>
            </div>
            <button type="submit">Enviar mensaje</button>
        </form>
    </div>
    
    <jsp:include page="footer.jsp" />
</body>
</html>