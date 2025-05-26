
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page - 2025</title>
</head>
<body>
<H1>Ejemplos de expresiones</H1>
<%-- Mostrar la fecha y hora actual --%>
<%= new java.util.Date().toString() %><br>
<%-- Convertir a mayúsculas un String --%>
<%= "Texto a mayúsculas".toUpperCase() %><br>
<%-- Resultado de una expresión aritmética --%>
<%= (5+2)/(float)3 %><br>
<%-- Generar un número aleatorio --%>
<%= new java.util.Random().nextInt(100) %>
</body>
</html>