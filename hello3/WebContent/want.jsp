<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보고싶은?</title>
</head>
<body>
<%= request.getParameter("main") %>
	<form action="./main.jsp" method="post">
		<!-- post - body부분에 담겨서 전송이 된다 -->
		<input type="radio" name="choice" value="persons" />사람
		<input type="radio" name="choice" value="fruit" />과일
		<input type="submit" />
	</form>
</body>
</html>