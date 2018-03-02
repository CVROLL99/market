<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%--
  Created by IntelliJ IDEA.
  User: misha
  Date: 19.02.2018
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>


<head>
    <meta charset="UTF-8"/>
    <style>
        <%@include file="/WEB-INF/css/style.css"%>
    </style>
    <title>Админка</title>

</head>
<body>
<div id="container">

    <div id="header">

        <table>
            <tr>
                <td>
                    <a href="${pageContext.request.contextPath}/index"><img src="/resources/logo1.jpg"
                                                                            align="left"/></a>
                </td>
                <td align="right">
                    <h2>Интернет-магазин товаров</h2>
                </td>
            </tr>
        </table>

    </div>

    <div id="menu">

        <table>

            <tr>
                <td>Меню редактирования товара</td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/admin">Назад</a></td>
            </tr>


        </table>

    </div>

    <div id="content">


        <form:form method="post" action="editsave">
            <table>
                <tr>
                    <td colspan="3">

                        <b>Редактирование товара "${command.name}"</b>
                    </td>
                </tr>
                <tr>
                    <td><b>Номер:</b></td>
                    <td ><form:input path="id"/></td>
                    <td rowspan="4" width="250"></td>
                </tr>
                <tr>
                    <td><b>Название:</b></td>
                    <td ><form:input path="name"/></td>

                </tr>
                <tr>
                    <td><b>Описание:</b></td>
                    <td ><form:textarea path="description"/></td>
                </tr>
                <tr>
                    <td><b>Цена:</b></td>
                    <td ><form:input path="price"/></td>
                </tr>
                <tr>

                    <td colspan="3"><input type="submit" value="Сохранить"/></td>
                </tr>
            </table>
        </form:form>


    </div>


    <div id="footer">


    </div>

</div>

</body>

</html>