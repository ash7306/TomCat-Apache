<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ import="kr.co.green.Country" %>
<%@ import="kr.co.green.CountryDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	out.println("<ul>");
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root" );
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT name, code FROM country;");
		
		while (rs.next()) {
			String name = rs.getString("name");
			String code = rs.getString("code");
			out.println("<li>" + name + ", " + code + "</li>");
		}
	} finally {
		if (rs != null) {
			rs.close();
		}
		if (stmt != null) {
			stmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}
	out.println("</ul>");
	
%>

<%
	
%>
</body>
</html>