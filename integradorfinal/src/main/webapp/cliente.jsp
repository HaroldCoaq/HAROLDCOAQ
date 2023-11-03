<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Cliente</title>
</head>
<body>
    <form action="procesarRegistro.jsp" method="post">
        Nombre: <input type="text" name="nombre"><br>
        Apellido: <input type="text" name="apellido"><br>
        Dirección: <input type="text" name="direccion"><br>
        Correo: <input type="text" name="correo"><br>
        Teléfono: <input type="text" name="telefono"><br>
        DNI: <input type="text" name="dni"><br>
        <input type="submit" value="Registrar Cliente">
    </form>
</body>
</html>
