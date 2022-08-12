<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%-- 에러페이지 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러를 보여줄 페이지</title>
</head>
<body>
	<p>요청 처리 중 에러가 발생했습니다. 다시 시도해주세요</p>
	<%--  
	예외 객체도 exception에 담겨 있어서 확인 가능
	<%= exception.getClass().getName() %>
	--%>
</body>
</html>