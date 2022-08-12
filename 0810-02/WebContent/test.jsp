<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- uri 후 컨트롤+스페이스 = 3번째 꺼 prefix = 해당 라이브러리를 'c'라는 이름으로 사용 하겠음 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="i" begin="1" end="10">
		<c:if test="${i % 2 == 0 }">
			<p>${ i }</p>
		</c:if>
	</c:forEach>
	<hr>
	이친구는 else가 없음 여러가지 조건을 나열하고 나머지 'otherwise'를 사용
	<c:choose>
		<c:when test="false">
			<p>첫번째 조건이 참일 때</p>
		</c:when>
		<c:when test="true">
			<p>두번째 조건이 참일 때 </p> 
		</c:when>
		<c:otherwise>
			<p>모든 조건이 참이 아닐 때</p> 
		</c:otherwise>
	</c:choose>
</body>
</html>