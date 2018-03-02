<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <td>Вы вошли как администратор</td>
            </tr>
            <tr>
                <td><a href="/addNew">Добавить товар</a></td>
            </tr>


        </table>

    </div>

    <div id="content">

        <table>
            <tr>
                <th>Номер</th>
                <th>Наименование</th>
                <th>Описание</th>
                <th>Цена</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach items="${products}" var="product">
                <tr onclick="show('block')" id="${product.id}">
                    <td>${product.id}</td>
                    <td>${product.name}</td>
                    <td>${product.description}</td>
                    <td>${product.price}</td>
                    <td><a href="deleteprod/${product.id}">Удалить</a></td>
                    <td><a href="editform/${product.id}">Изменить</a></td>
                </tr>

            </c:forEach>
        </table>


    </div>


    <div id="footer">


    </div>

</div>

</body>

</html>
