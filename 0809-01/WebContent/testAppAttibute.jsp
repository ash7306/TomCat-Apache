<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	우리가 필요 하다면 어플리케이션에서 계속해서 사용할 값을 설정하는 것도 가능함
	
	<p>어플리케이션 기본 객체에 이름-값 설정하는 페이지</p>
	<%
		application.setAttribute("myStr", "string-obj");
		application.setAttribute("myInt", Integer.valueOf(10));
	%>
	<br/> 어플리케이션 동작하는 동안에 이 값들을 저장 하고 있음
</body>
</html>