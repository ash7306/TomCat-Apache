<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>자바 웹 어플리케이션은 각각의 고유한 context root경로를 가집니다.</p>
	<p><%= request.getContextPath() %></p>
	
	<!-- 주소를 상수로 정해놓으면 변경시 어려움이 있다 -->
	<!--  <form action="/0809-01"> -->
	<form action="<%= request.getContextPath() %>/testRequest.jsp">
		<input type="submit" />
	</form>
	<!-- 톰캣은 주로 사용하는 어플리케이션은 root주소를 사용하는게 좋음 -->
	<!-- ex) 주로 사용하는 어플은 루트주소로 설정하면 /books/, /home/, /department/ -->
</body>
</html>