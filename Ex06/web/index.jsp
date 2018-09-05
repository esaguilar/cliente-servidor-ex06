<%-- 
    Document   : index
    Created on : 01/09/2018, 17:55:24
    Author     : erickaguilar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form name="frmLogin" action="Valida" method="get">
            <table>
                <tr>
                    <td>
                        <h1>Login:</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        Login
                    </td>
                    <td>
                        <input type="text" name="txtLogin"/><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        Senha
                    </td>
                    <td>
                        <input type="password" name="txtSenha"/><br>
                    </td>
                </tr>
                <tr>
                    <td>
                        <button name="btnBotao">Logar</button>
                    </td>
                </tr>
                <tr>
                    <td>
                        <%
                            String usuario = request.getParameter("usu");
                            if (usuario != null) {
                                if (usuario.equals("invalido")) {


                        %>
                        <label>Login Inválido</label>
                        <%                                }
                            }
                        %>
                        <%
                            String usuarioValido = request.getParameter("sess");
                            if (usuarioValido != null) {
                                if (usuarioValido.equals("no")) {
                        %>     
                        <label>Usuário sem sessão</label>
                        <%
                                }
                            }
                        %>
                    </td>
                </tr>
            </table>

        </form>
    </body>
</html>
