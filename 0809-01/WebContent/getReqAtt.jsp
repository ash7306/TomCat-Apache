<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=	request.getAttribute("reqAttr")%>
	<%= request.getAttribute("reqInt")%><br/>
	보는 페이지에서 요청하기
	
	application은 유지가 되지만
	request 요청한 정보를 보낸후 사라짐
	
	우리가 가장많이 다루게 될 건 request객체 임..
	사용자 요청을 처리 하기 위해 request객체에 익숙해져야함
</body>
</html>