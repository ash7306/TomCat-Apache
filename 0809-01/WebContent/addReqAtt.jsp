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
		request.setAttribute("reqAttr", "요청 객체에 존재하는 값");
		request.setAttribute("reqInt", 22);
	%>
	이 객체가 살아있는 영역은?
	리퀘스트 객체는 사용자의 한번의 요청에 대해서만 유지 됨
	
	<%=	request.getAttribute("reqAttr")%>
	<%= request.getAttribute("reqInt")%><br/>
	설정하는 페이지에서 요청하기
	

</body>
</html>