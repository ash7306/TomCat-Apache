<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사람등록하기</title>
</head>
<body>
	<form action="persons" method="post">
		<input type="text" name="name"/>이름
		<input type="text" name="age"/>나이
		<input type="text" name="gender"/>성별
		<input type="submit"/>
		
		<c:if test="${ not empty errors }">
			<div>
				<c:forEach var="message" items="${ errors }">
					<p>${ message.value }</p>
				</c:forEach>
			</div>
		</c:if>
	</form>
</body>
</html>