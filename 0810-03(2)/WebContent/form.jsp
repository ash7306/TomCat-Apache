<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./param">
	<!-- <form action="${ pageContext.request.contextPath/param">  -->
	<!-- contextroot경로를 기준으로 .. --> 
		<input type="text" name="name"/>
		<input type="number" name="age"/>
		<input type="submit" name=""/>
		
	</form>
</body>
</html>