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
<h1>Delete Confirmation</h1>
<p>Name : <c:out value ="${grade.getName()}"></c:out><br />
Type : ${grade.getType()}<br />
Score :<fmt:formatNumber type = "number" maxFractionDigits ="1" value = "${grade.getScore() }" /><br />
Total :<fmt:formatNumber type = "number" maxFractionDigits ="1" value = "${grade.getTotal() }" /></p>
<p>Are You sure?</p>
<a href="/reallydelete?id=${grade.getId()}">Yes,Delete</a><br />
<a href="/"> Return to the List</a>
</body>
</html>