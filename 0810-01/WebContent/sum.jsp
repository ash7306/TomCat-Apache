<%@ page import="kr.co.green.MyMath"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합합</title>
</head>
<body>
<%
	MyMath m = new MyMath();
	out.println(m.sum(10,20));
%>
</body>
</html>