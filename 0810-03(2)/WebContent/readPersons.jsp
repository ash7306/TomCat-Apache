<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사람목록보기</title>
</head>
<body>
	
	 <c:if test="${not empty getlist }">
		 <ul>
			<c:forEach var="ps" items="${ getlist }">
				<li>
					이름 : 
					${ ps.name }
					나이 : 
					${ ps.age }
					성별 : 
					${ ps.gender }
				</li>
			</c:forEach>
		</ul>
	</c:if>
	<br/>
	<button onclick="location='index.jsp'">돌아가기</button>
</body>
</html>