<%@page import="com.emergentes.modelo.Estudiante"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    Estudiante estudiante = (Estudiante) request.getAttribute("estudiante");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><c:if test="${estudiante.id == 0}">Nuevo</c:if>
            <c:if test="${estudiante.id != 0}">Editar</c:if>
                estudiante
            </h1>
            <form action="inicio" method="post">
                <input type="hidden" name="id" value="${estudiante.id}"/>
            <table>
                <tr>
                    <td>Nombres:</td>
                    <td><input type="text" name="nombre" value="${estudiante.nombre}"/></td>
                </tr>
                <tr>
                    <td>Apellidos:</td>
                    <td><input type="text" name="apellido" value="${estudiante.apellido}"/></td>
                </tr>
                <tr>
                    <td>Seminario:</td>
                    <td><input type="text" name="seminario" value="${estudiante.seminario}"/></td>
                </tr>
                <tr>
                    <td>Fecha:</td>
                    <td><input type="text" name="fecha" value="${estudiante.fecha}"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit"/></td>
                </tr>
            </table>
        </form>

    </body>
</html>
