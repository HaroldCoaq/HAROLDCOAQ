<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.Dao" %>
<%@ page import="dto.Producto" %>
<%@ page import="java.util.ArrayList" %>

<%
    Dao dao = new Dao();
    int idProducto = Integer.parseInt(request.getParameter("id"));
    Producto producto = dao.buscarProducto(idProducto);

    if (producto != null) {
        List<Producto> carrito = (List<Producto>) session.getAttribute("carrito");
        if (carrito == null) {
            carrito = new ArrayList<>();
        }
        carrito.add(producto);
        session.setAttribute("carrito", carrito);

        response.sendRedirect("carrito.jsp");
    } else {
        response.sendRedirect("error.jsp");
    }
%>
