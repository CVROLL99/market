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

<div id="container">

    <div id="header">


        <h2>Добро пожаловать в интернет-магазин товаров!</h2>

    </div>

    <div id="menu">

        <p>Здесь будет располагаться меню.</p>
    </div>

</div>

<div id="content">

    <table>
        <tr>
            <th>Номер</th>
            <th>Наименование</th>
            <th>Описание</th>
            <th>Цена</th>
        </tr>
        <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
            </tr>

        </c:forEach>
    </table>


</div>


<div id="footer">


</div>

</div>

</body>

</html>