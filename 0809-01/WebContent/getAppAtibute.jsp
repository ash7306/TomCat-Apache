<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>플리케이션 기본 객체에 설정이 되어 있는 값을 확인하는 페이지</p>
	<%=	application.getAttribute("myStr")%>
	<%= application.getAttribute("myInt")%><br/>
	이전 설정하는 페이지를 먼저 실행시키면 값을 확인 할 수 있다
	"영역 Scope"는 어플리케이션이 동작하는 있는 동안은 계속해서 존재 한다.
</body>
</html>