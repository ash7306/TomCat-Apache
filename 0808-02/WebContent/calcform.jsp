<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			
	<!--  <form method="get" action=".calcresult.jsp">-->
	<form action="./calcresult.jsp">
		<input type="number" name="number" />
		<input type="number" name="number2" />
		<label for="cal">사칙연산</label>
		<select id="select_value" name="cal">
			<option value="+">+</option>
			<option value="-">-</option>
			<option value="*">*</option>
			<option value="/">/</option>
		</select>
		<input type="submit" />
	</form>	
</body>
</html>