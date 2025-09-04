<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String usuario = request.getParameter("usuario");
    String password = request.getParameter("password");

    // Validación simulada
    if (usuario != null && !usuario.isEmpty() && password != null && !password.isEmpty()) {
%>
        <html>
        <head>
            <title>Acceso concedido</title>
        </head>
        <body>
            <h2>¡Bienvenido, <%= usuario %>!</h2>
            <p>Acceso simulado exitoso.</p>
            <a href="index.jsp">Volver a la página principal</a>
        </body>
        </html>
<%
    } else {
%>
        <html>
        <head>
            <title>Error de acceso</title>
        </head>
        <body>
            <h2>Error: Usuario o contraseña inválidos</h2>
            <a href="login.jsp">Intentar nuevamente</a>
        </body>
        </html>
<%
    }
%>