<%@page import="java.net.URLEncoder"%>
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
		Cookie[] cookies = request.getCookies();
		for (Cookie c : cookies) {
			if (c.getName().equals("rememberme")) {
				request.setAttribute("idvalue", URLEncoder.encode(c.getValue(), "utf-8"));
			}
		}
	%>

	<form action="./login" method="post">
		<input type="text" name="id" value="${ idvalue } "/>
		<input type="password" name="password"/>
		<input type="checkbox" name="rememberme"/>
		<input type="submit"/>
	</form>
	
	<form method="get">
		<input type="button" value="로그아웃" onclick="check();">
	</form>
	<button name="logout">로그아웃</button><br/>
	<a href="loginOk.jsp">로그인하면 보이는 페이지</a>
</body>
</html>