<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setAttribute("asdf", "zxcv"); %>
	<c:set var="jjj" value="value2" scope="request"/>
								<!--scope="저장위치" -->
	<!-- el식 -->
	${ asdf }	
	${ jjj }
	
	<c:url var="searchGoogle" value="http://google.com/search" scope="request">
		<c:param name="q" value="검색파라미터"/>
	<!-- 검색 내용을 한글로 자동으로 인코딩 해줌 -->
	<!-- %ea%b2%80%ec%83%89%ed%8c%8c%eb%9d%bc%eb%af%b8%ed%84%b0" = "검색파라미터" -->
	</c:url>
	
	<c:out value="출력할때 쓰는데 "/>
	
	<a href="${ searchGoogle }">구글 검색</a>
</body>
</html>