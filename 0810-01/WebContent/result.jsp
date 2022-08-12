<%@page import="kr.co.green.CountryDAO"%>
<%@page import="kr.co.green.Country"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
	<%--
	<% 
		for (int i = 0; i < list.size(); i++) { %>
			<li><%= list.get(i).getName() %>
				인구 -
				<%= list.get(i).getPopulation() %>
			</li>
	<% }%>
	--%>
	 <!-- 이름을 찾음 : list라는 객체를 순서대로 찾을것임 (page < request < session < application) -->
	 <!-- 원소가 있는 객체의 유무를 확인하고 'true', 'false' -->
	 <c:if test="${not empty testlist }" >
		 <ul>
		 			<!--items : 여러개가 담긴 객체를 표현 할 수 있음(배열 리스트 셋 맵 등) -->
			<c:forEach var="country" items="${ testlist }" >
				<li>
					${ country.name }
					인구 -
					${ country.population }
				</li>
			</c:forEach>
		</ul>
	</c:if>
</body>
</html>