<%--
  Created by IntelliJ IDEA.
  User: CONG
  Date: 5/24/2021
  Time: 2:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="/users?action=create">Add New User</a>
    </h2>

</center>
<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <a href="/users?action=delete&id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <div>

        <%--    phải dùng post vì nó sẽ đi kèm /users?action=findByCountry và thông tin về country luôn, còn get thì sẽ bị country đè mất--%>
        <form method="Post" action="/users?action=findByCountry">
            <input type="text" name="country">
            <input type="submit" value="Tìm kiếm theo quốc gia">
        </form>
    </div>
    <div>
        <form method="Post" action="/users?action=soft">
            <select  name="typeOfSoft">
                <option value="byName">Theo tên</option>
                <option value="byCountry">Theo quốc gia</option>
            </select>
            <input type="submit" value="Sắp sếp">
        </form>
    </div>
</div>
</body>
</html>
