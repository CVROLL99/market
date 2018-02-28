<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                <td>Добро пожаловать на наш сайт!</td>
            </tr>
            <tr>
                <td><a href="${pageContext.request.contextPath}/admin">В админку</a></td>
            </tr>
            <tr>
                <td>Форма логина и пароля</td>
            </tr>


        </table>

    </div>

    <div id="content">

        <%--<h1 align="center">Подробности о товаре</h1>--%>

        <table>
            <tr>
                <td colspan="3">
                    <b>Подробности о товаре: </b>${command.name}
                </td>
            </tr>
            <tr>
                <td rowspan="4">Здесь будет картинка</td>
                <td><b>Название:</b></td>
                <td>${command.name}</td>
            </tr>
            <tr>
                <td><b>Описание:</b></td>
                <td>${command.description}</td>
            </tr>
            <tr>
                <td><b>Цена:</b></td>
                <td>${command.price}</td>
            </tr>
            <tr>

                <td colspan="2"><a href="${pageContext.request.contextPath}/index">Назад</a></td>
            </tr>
        </table>


    </div>


    <div id="footer">


    </div>

</div>

</body>

</html>