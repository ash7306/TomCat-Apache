<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- <%@page autoFlush="false" %> 로 하면 출력이 안됨 기본으로 'true'값으로 설정됨 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Out 기본객체</title>
</head>
<body>
	<!-- 고정적 텍스트 -->
	<h1>정적 테스트</h1>
	<!-- 계산식 -->
	<%= 1 + 2 + 3 %><br/>
	<%
		out.println(1 + 2 + 3);	
		out.println("<br/");	
	%>
	<!--  -->
	<p>jsp의 모든 특스트는 아웃객체를 출력합니다.</p>
	<%
		boolean someBool = true;
	
		if (someBool) {
			out.println("<p>참일 때 출력해야 하는 값</p>");
		} else {
			out.println("<p>거짓일 때 출력해야 하는 값</p>");
		}
	%>
	
</body>
</html>