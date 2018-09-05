<%-- 
    Document   : sistema
    Created on : 01/09/2018, 18:24:36
    Author     : erickaguilar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            String usuario = (String) session.getAttribute("loginValido");
            if (usuario == null) {
                response.sendRedirect("index.jsp?sess=no");
            }
            if (usuario.equals("teste")) {
        %>
        <%@include file="menu.jsp" %>
        <%
        } else if (usuario.equals("usuario")) {
        %>
        <h1>Olá <%=usuario%></h1>
        <%

            }
        %>
    </body>
</html>
