<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Dao" %>

<%
    String nombre = request.getParameter("nombre");
    String tipo = request.getParameter("tipo");
    double precio = Double.parseDouble(request.getParameter("precio"));
    int stock = Integer.parseInt(request.getParameter("stock"));

    Dao dao = new Dao();
    dao.insertarProducto(nombre, tipo, precio, stock);

    response.sendRedirect("nuevoproducto.jsp");
%>
