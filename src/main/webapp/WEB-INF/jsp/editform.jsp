<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Редактирование товара</h1>
<form:form method="post" action="save">
    <table >
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