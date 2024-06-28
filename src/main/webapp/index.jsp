<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    List<Estudiante> estudiantes = (List<Estudiante>) request.getAttribute("estudiantes");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .contenedor {
                width: 300px;
                margin: 0 auto;
                padding: 20px;
                border: 1px solid #ccc;
                text-align: center;
            }
            h1 {
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="contenedor">
            <p>SEGUNDO PARCIAL TECNOLOGIAS EMERGENTES II-742<br>
                NOMBRE:Rodrigo Chuqichambi Huanca<br>
                CI:12574149</p>
        </div>

        <h1 style="text-align: center;">Registro Día del Internet</h1>

        <div style="text-align: center;">
            <p><a href="inicio?action=add">Nuevo</a></p>
        </div>

        <div style="text-align: center;">
            <table border="1" style="margin: auto;">
                <tr>
                    <th>Id</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Seminario</th>
                    <th>Confirmado</th>
                    <th>Fecha inscripción</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${estudiantes}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.apellido}</td>
                        <td>${item.seminario}</td>
                        <td><input type="checkbox" name="seleccionar" value="${item.id}"></td>
                        <td>${item.fecha}</td>
                        <td><a href="inicio?action=edit&id=${item.id}">Editar</a></td>
                        <td><a href="inicio?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro'))">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
