<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>INICIO</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" href="plugin/components/Font Awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="plugin/whatsapp-chat-support.css">
<link rel="stylesheet" href="boxicons/css/boxicons.min.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
		 <div class="wrapper">
		 
		 
		 <jsp:include page="header.jsp" />
    
<!----------------------------- Form box ----------------------------------->    
   
    
    <div class="form-box">
        
        <!------------------- login form -------------------------->
		<form action="AutenticacionServlet" method="post">      
        <div class="login-container" id="login">
            <div class="top">
                <header>Iniciar Sesión</header>
            </div>
            <div class="input-box">
                <input type="text" class="input-field" placeholder="Usuario" name="nombres">
                <i class="bx bx-user"></i>
            </div>
            <div class="input-box">
                <input type="password" class="input-field" placeholder="Contraseña" name="contraseña">
                <i class="bx bx-lock-alt"></i>
            </div>
            <div class="input-box">
                <input type="submit" class="submit" value="Iniciar Sesión">
            </div>
            <div class="two-col">
                <div class="one">
                    <input type="checkbox" id="login-check">
                    <label for="login-check"> Recordar contraseña</label>
                </div>
            </div>
            <div class="bot">
                <span>No tienes una cuenta? <a href="#" onclick="register()">Registrate</a></span>
            </div>
        </div>
        </form>
        <!------------------- registration form -------------------------->
        
        <form action="RegistroClienteServlet" method="post">
        <div class="register-container" id="register">
            <div class="top">
                <header>Registrarse</header>
            </div>
            <div class="two-forms">
                <div class="input-box">
                    <input type="text" class="input-field" placeholder="Nombres" name="nombres">
                    <i class="bx bx-user"></i>
                </div>
                <div class="input-box">
                    <input type="text" class="input-field" placeholder="Apellidos" name="apellidos">
                    <i class="bx bx-user"></i>
                </div>
            </div>
            <div class="input-box">
                <input type="text" class="input-field" placeholder="Correo" name="correo">
                <i class="bx bx-envelope"></i>
            </div>
            <div class="input-box">
                <input type="password" class="input-field" placeholder="Contraseña" name="contraseña">
                <i class="bx bx-lock-alt"></i>
            </div>
            <div class="input-box">
                <input type="submit" class="submit" value="Registrarse">
            </div>
            <div class="top">
                <span>Tienes una cuenta? <a href="#" onclick="login()">Iniciar Sesión</a></span>
            </div>
        </div>
        </form>
    </div>
    
    
</div>  


 
<script>
   
   function myMenuFunction() {
    var i = document.getElementById("navMenu");
    if(i.className === "nav-menu") {
        i.className += " responsive";
    } else {
        i.className = "nav-menu";
    }
   }
 
</script>
<script>
    var a = document.getElementById("loginBtn");
    var b = document.getElementById("registerBtn");
    var x = document.getElementById("login");
    var y = document.getElementById("register");
    function login() {
        x.style.left = "4px";
        y.style.right = "-520px";
        a.className += " white-btn";
        b.className = "btn";
        x.style.opacity = 1;
        y.style.opacity = 0;
    }
    function register() {
        x.style.left = "-510px";
        y.style.right = "5px";
        a.className = "btn";
        b.className += " white-btn";
        x.style.opacity = 0;
        y.style.opacity = 1;
    }
</script>

</body>
</html>