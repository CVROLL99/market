<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
                <td>Меню добавления товара</td>
            </tr>
            <tr>
                <td>Вы можете добавить товар здесь</td>
            </tr>



        </table>

    </div>

    <div id="content">

        <form:form method="post" action="save">
            <table >
                <tr>
                    <td colspan="2">
                        <b>Добавить новый товар</b>
                    </td>
                </tr>
                <tr>
                    <td>Название : </td>
                    <td><form:input path="name"  /></td>
                </tr>
                <tr>
                    <td>Описание :</td>
                    <td><form:input path="description" /></td>
                </tr>
                <tr>
                    <td>Цена :</td>
                    <td><form:input path="price" /></td>
                </tr>
                <tr>
                    <td> </td>
                    <td><input type="submit" value="Сохранить" /></td>
                </tr>
            </table>
        </form:form>


    </div>


    <div id="footer">


    </div>

</div>

</body>

</html>
