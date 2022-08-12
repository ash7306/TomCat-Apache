<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	List<String> list = new ArrayList<>();
	for (int i = 0; i < 100; i++) {
		list.add("book" + i);
	}
%>

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
		String p = request.getParameter("page");
		int pp = Integer.valueOf(p);
		
		int count = (pp * 10) - 10;
		for (int i = 0; i < 10; i++) {
			out.print(list.get(count));
			out.print("<br/>");
			count++;
		}
	%>
</body>
</html>