오늘 날짜를 보여줄 수 있는 jsp 페이지
java.util.Calendar
java.time.LocalDate

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// scriptlet
		System.out.println("사용자가 jsp 페이지 요청함");
		int a = 10;
	%>	
	<p>jsp 페이지 입니다.</p>
	<strong><%= java.time.LocalTime.now() %></strong><br/>
	<p>a의 값은 <%= a %>입니다</p>
	<%--jsp의 주석 처리 --%>
</body>
</html>