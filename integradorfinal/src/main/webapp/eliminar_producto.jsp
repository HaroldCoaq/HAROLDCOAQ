<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Dao" %>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Dao dao = new Dao();
    dao.eliminarProducto(id);

    response.sendRedirect("nuevoproducto.jsp");
%>
