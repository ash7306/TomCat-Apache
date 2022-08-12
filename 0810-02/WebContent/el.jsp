<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	JSP에는 'EL' 이라는 표현식이 있다

	<p>JSP Expression Language</p>
	${ "qwer" } ${ 123 } ${ 55.123 } ${ true }
	<br /> ${ 1 + 2 } ${ true && false }
	<br />
	${ pageContext.request.requestURI }
	


</body>
</html>