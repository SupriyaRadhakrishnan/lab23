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
<h1>Confirm Details</h1>
<p>Id : ${grade.getId() }</p>
<p>Name : <c:out value ="${grade.getName()}"></c:out></p>
<p>Type : ${grade.getType() }</p>
<p>Score :<fmt:formatNumber type = "number" maxFractionDigits ="1" value = "${grade.getScore()}" /></p>
<p>Total :<fmt:formatNumber type = "number" maxFractionDigits ="1" value = "${grade.getTotal()}" /></p>
<a href="/" >Return to the list</a>
</body>
</html>