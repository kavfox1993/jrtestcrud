<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Users</title>
</head>
<body>
    <h1>Users</h1>
    <c:url var="addUrl" value="/jrproject/main/users/add" />
    <c:url var="filterUrl" value="/jrproject/main/users/filter" />
    <table style="border: 2px solid; width: 650px; text-align:center">
        <thead style="">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>isAdmin</th>
            <th>Created Date</th>
            <th colspan="4"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="user">
            <c:url var="editUrl" value="/jrproject/main/users/edit?id=${user.id}" />
            <c:url var="deleteUrl" value="/jrproject/main/users/delete?id=${user.id}" />
            <tr>
                <td><c:out value="${user.id}" /></td>
                <td><c:out value="${user.name}" /></td>
                <td><c:out value="${user.age}" /></td>
                <td><c:out value="${user.admin}" /></td>
                <td><c:out value="${user.date}" /></td>
                <td><a href="${editUrl}">Edit</a></td>
                <td><a href="${deleteUrl}">Delete</a></td>
                <td><a href="${addUrl}">Add</a></td>
            </tr>
        </c:forEach>
        </tbody>
        <tbody>
    </table>

    <c:if test="${usersfull.size() > -1}">
        <c:forEach begin="1" end="${count}" var="val">
            <c:url var="pageURL" value="/jrproject/main/usersPage?numpage=${val}" />
            <a href="${pageURL}">${val}</a>-.
        </c:forEach>
    </c:if>
    </br>
    <c:if test="${empty users}">
        List of users is empty <a href="${addUrl}">Add</a> a user.
    </c:if>
    </br>
    <c>
        You can filter users. <a href="${filterUrl}">Filter</a>.
    </c>
    </br>
</body>
</html>
