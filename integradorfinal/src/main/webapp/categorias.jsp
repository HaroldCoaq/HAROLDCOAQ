<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CATEGORIAS</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/login.css">
<link rel="stylesheet" href="plugin/components/Font Awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="plugin/whatsapp-chat-support.css">
</head>
<body>
		<jsp:include page="header.jsp" />
		
		<div class="contenedor-cartas">
 	 
			<div class="carta">
				<div class="face front">
					<img src="img/PANTALLA.jpg" alt="">
					<h3>Monitores</h3>
				</div>
				<div class="face back">
					<h3>Monitores</h3>
					<p>PLANOS</p>
					<p>CURVOS</p>
					<p>GAMING 240HZ</p>
					<div class="link">
						<a href="monitores.jsp">Mostrar más</a>
					</div>
				</div>
			</div>
			
			<div class="carta">
				<div class="face front">
					<img src="img/LAPTOP.jpg" alt="">
					<h3>Laptops</h3>
				</div>
				<div class="face back">
					<h3>Laptops</h3>
					<p>Laptop Lenovo</p>
					<p>Laptop HP</p>
					<p>Laptop MSI</p>
					<div class="link">
						<a href="#">Mostrar más</a>
					</div>
				</div>
			</div>
			
			<div class="carta">
				<div class="face front">
					<img src="img/COMPUTADORA.jpg" alt="">
					<h3>Computadoras</h3>
				</div>
				<div class="face back">
					<h3>Computadoras</h3>
					<p>Oficina</p>
					<p>Ingeniería & Diseño Gráfico</p>
					<p>Puntos de Venta</p>
					<div class="link">
						<a href="#">Mostrar más</a>
					</div>
				</div>
			</div>
			
			<div class="carta">
				<div class="face front">
					<img src="img/IMPRESORA.jpg" alt="">
					<h3>Impresoras</h3>
				</div>
				<div class="face back">
					<h3>Impresoras</h3>
					<p>Impresoras</p>
					<p>Tintas</p>
					<p>Toner</p>
					<div class="link">
						<a href="#">Mostrar más</a>
					</div>
				</div>
			</div>
			
			<div class="carta">
				<div class="face front">
					<img src="img/ACCESORIO.jpg" alt="">
					<h3>Accesorios</h3>
				</div>
				<div class="face back">
					<h3>Accesorios</h3>
					<p>Adaptadores</p>
					<p>Tarjetas de Video</p>
					<p>Fuente Poder, etc</p>
					<div class="link">
						<a href="#">Mostrar más</a>
					</div>
				</div>
			</div>
			</div>

	

	<!-- Whatsapp -->
	<div class="whatsapp_chat_support wcs_fixed_right" id="button-w">
		<div class="wcs_button_label">
				Contáctanos
			</div>  
		<div class="wcs_button wcs_button_circle">
			<span class="fa fa-whatsapp"></span>
		</div>  
	 
		<div class="wcs_popup">
			<div class="wcs_popup_close">
				<span class="fa fa-close"></span>
			</div>
			<div class="wcs_popup_header">
				<span class="fa fa-whatsapp"></span>
				<strong>Servicio al cliente</strong>
				
				<div class="wcs_popup_header_description">¿Necesidad de ayuda? Chatea con nosotros en Whatsapp</div>
	
			</div>  
			<div class="wcs_popup_input" 
				data-number="+51930810219"
				data-availability='{ "monday":"07:00-22:30", "tuesday":"07:00-22:30", "wednesday":"07:7030-22:30", "thursday":"07:00-22:30", "friday":"07:00-22:30", "saturday":"09:00-18:30", "sunday":"09:00-22:30" }'>
				<input type="text" placeholder="Escribir pregunta!" />
				<i class="fa fa-play"></i>
			</div>
			<div class="wcs_popup_avatar">
				<img src="https://1000logos.net/wp-content/uploads/2021/03/Rambler-logo.png" alt="">
			</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp" />
	
	<script src="plugin/components/jQuery/jquery-1.11.3.min.js"></script>
	<script src="plugin/components/moment/moment.min.js"></script>
	<script src="plugin/components/moment/moment-timezone-with-data.min.js"></script>
	<script src="plugin/whatsapp-chat-support.js"></script>
	<script>
	   $('#button-w').whatsappChatSupport({
			defaultMsg : '',
		});
	</script>
</body>
</html>