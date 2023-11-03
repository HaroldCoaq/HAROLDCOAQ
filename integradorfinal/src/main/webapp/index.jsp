<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INICIO</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" href="plugin/components/Font Awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="plugin/whatsapp-chat-support.css">
</head>
<body>

	<jsp:include page="headerCLI.jsp" />
	<div class="ini">
        <div class="a">
            <a href="login.jsp">
                <img src="img/cliente.png" alt="Cliente Image"><br/><br/><br/>
                <h2>CLIENTE</h2>
            </a>
        </div>
        <div class="b">
            <a href="nuevoproducto.jsp">
                <img src="img/adm.png" alt="Admin Image"><br/><br/><br/>
                <h2>ADMINISTRADOR</h2>
            </a>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>