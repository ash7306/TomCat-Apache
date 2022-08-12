<%@page import="java.util.ArrayList"%>
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
		String list[] = request.getParameterValues("num");
		
		if(list == null) {
			out.println("선택한 항목이 없습니다.");
		} else {
			out.println("선택한 항목입니다.<br/>");
			for(String number: list) {
				out.println(number);
				out.println("<img src='./images/chunsik/춘식" + number + ".png' />");
			}
		}
	%>
</body>
</html>