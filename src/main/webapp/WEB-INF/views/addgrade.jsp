<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Add Grade</h1>
<form method="post" action="/addgrade">
<label for="name">Name</label> 
<input type="text" id="name" name="name" pattern="[a-zA-Z][a-zA-Z ]+"><br />
<label for="type">Name</label> 
<select id ="type" name="type"> 
<option>Quiz</option>
<option>Exam</option>
<option>Assignments</option>
</select> <br />
<label for="score">Score</label> 
<input type="number"  id="score" name="score" step="any"><br /><br />
<label for="total">Total</label> 
<input type="number"  id="total" name="total"><br /><br />
<input type="submit"/>
</form>
</body>
</html>