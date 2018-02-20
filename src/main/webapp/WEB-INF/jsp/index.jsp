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

<script type="text/javascript">

    //Функция показа
    function show(state) {

        document.getElementById('window').style.display = state;
        document.getElementById('wrap').style.display = state;
    }

</script>

<!-- Задний прозрачный фон-->
<div onclick="show('none')" id="wrap"></div>

<!-- Само окно-->
<div id="window">
    <!-- Картинка крестика-->
    <img class="close" onclick="show('none')" src="/resources/cross.jpg" align="right">
</div>

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
                <td>В этом блоке разместится меню</td>
            </tr>
            <tr>
                <td>Форма логина и пароля</td>
            </tr>


        </table>
        <%--Здесь будет располагаться меню--%>
        <%--<p>Здесь будет располагаться меню.</p>--%>


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
                    <td onclick="show('block')">${product.id}</td>
                    <td onclick="show('block')">${product.name}</td>
                    <td onclick="show('block')">${product.description}</td>
                    <td onclick="show('block')">${product.price}</td>
                </tr>

            </c:forEach>
        </table>


    </div>


    <div id="footer">


    </div>

</div>

</body>

</html>