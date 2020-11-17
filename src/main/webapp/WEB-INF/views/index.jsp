<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Grade Details</h1>
<c:choose>
<c:when test="${fn:length(grades) > 0}">
<table>
<thead>
<tr>
<th><b>Name</b></th>
<th><b>Type</b></th>
<th><b>Score</b></th>
<th><b>Total</b></th>
<th><b></b></th>
</tr>
</thead>
<tbody>
<c:forEach var="grade" items="${grades}">
<tr>
<td>${grade.getName()}</td>
<td>${grade.getType()} </td>
<td><fmt:formatNumber type = "number" maxFractionDigits ="1" value = "${grade.getScore()}" /></td>
<td>${grade.getTotal()}</td>
<td><a href="/delete?id=${grade.getId()}"> Delete</a></td>
</tr>
</c:forEach>
<tr>
<td><b>Percentage</b></td>
<td></td>
<td></td>
<td><b><fmt:formatNumber type = "number" maxFractionDigits ="1" value = "${percentage}" /></b></td>
<td></td>
</tr>
</tbody>
</table>
</c:when>
<c:otherwise>
<p>${message}</p>
</c:otherwise>	
</c:choose>
<a href="/addgrade"> Add a Grade</a>
</body>
</html>