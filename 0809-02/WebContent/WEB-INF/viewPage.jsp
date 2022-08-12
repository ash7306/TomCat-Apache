<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자가 볼 페이지</title>
</head>
<body>
	<p>정보</p>
	<p>연산의 결과</p>
	<%--<%= request.getParameter("result") %> --%>	
	<%= request.getAttribute("result") %>
	사용자가 못보게 할려면.. WEB-INF 에 넣어 준다
</body>
</html>