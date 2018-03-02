<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: misha
  Date: 19.02.2018
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8"/>
    <style>
        <%@include file="/WEB-INF/css/style.css"%>
    </style>
    <title>Интернет-магазин</title>

</head>

<body>
<script src="https://yandex.st/jquery/2.1.4/jquery.min.js" type="text/javascript"></script>

<div id="container">

    <div id="header">

        <table>
            <tr>
                <td>
                    <img src="/resources/logo1.jpg" align="left"/>
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
                <td>Добро пожаловать на наш сайт!</td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/admin">Вход</a></td>
            </tr>
            <tr>
                <td>Форма логина и пароля</td>
            </tr>


        </table>

    </div>

    <div id="content">

        <table id="tblExport">
            <tr>
                <th>Номер</th>
                <th>Наименование</th>
                <th>Описание</th>
                <th>Цена</th>
                <th></th>
            </tr>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td><a href="showProduct/${product.id}">Подробнее</a></td>
                </tr>

            </c:forEach>
        </table>


    </div>


    <div id="footer">


    </div>

</div>

</body>

</html>