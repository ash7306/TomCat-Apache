<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="showerror.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 확인을 위한 페이지</title>
</head>
<body>
	톰캣은 에러가 발생하면 사용자에게 코드를 다보여 준다.
	이 에러 페이지에 불필요한 코드를 제거 하고
	에러페이지를 만들어 보자 
	<%
		String name = null;
		System.out.println(name.toString());
	%>
</body>
</html>