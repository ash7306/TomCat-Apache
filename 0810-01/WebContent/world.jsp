<%@page import="kr.co.green.CountryDAO"%>
<%@page import="kr.co.green.Country"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
	CountryDAO dao = new CountryDAO();
	List<String> list = dao.getContinents();
%>
	<form action="test" method="post">
		<select name="continent">
			<%
				for (int i = 0; i < list.size(); i++) {
			//value 안에는 소중하게 값을 집어 넣어야 함
			%>
			<option value="<%=list.get(i)%>"><%=list.get(i)%></option>
			<%
				}
			%>
		</select>
		<input type="submit" />
	</form>
</body>
</html>