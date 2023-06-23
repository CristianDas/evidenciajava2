<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="model.UsuarioVO" %>
<!DOCTYPE html>
<html>
<head>
    <title>Consulta de Usuarios</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
        }

        h1 {
            color: #333;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
            text-align: left;
        }
    </style>
</head>
<body>
    <a href="facebook.jsp">Volver atrás</a>
    <h1>Lista de Usuarios</h1>
    <table>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Correo Electrónico</th>
                <th>Contraseña</th>
            </tr>
        </thead>
        <tbody>
            <% for (UsuarioVO usuario : (List<UsuarioVO>) request.getAttribute("usuarios")) { %>
                <tr>
                    <td><%= usuario.getNombre() %></td>
                    <td><%= usuario.getCorreoElectronico() %></td>
                    <td><%= usuario.getContraseña() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
