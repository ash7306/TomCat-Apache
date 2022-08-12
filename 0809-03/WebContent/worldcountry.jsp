<%@page import="com.mysql.cj.x.protobuf.MysqlxDatatypes.Array"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
	List<String> list = new ArrayList<>();
	String continent = request.getParameter("continent");
	out.println(continent + "<br/>" );

	Class.forName("com.mysql.cj.jdbc.Driver");
	String query = "SELECT * FROM country where continent = ? ORDER BY Population DESC;";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
		
	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root");
		pstmt = conn.prepareStatement(query);
		pstmt.setString(1, continent);
		//pstmt = conn.prepareStatement();
		//쿼리문에 '?' 을 가지고 설정을 할 수 있음
		rs = pstmt.executeQuery();
		
		while (rs.next()) {
			String name = rs.getString("name");
			String population = rs.getString("Population");
			list.add(name + ", " + population);
		}
	} finally {
		if (rs != null) {
			rs.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (conn != null) {
			conn.close();
		}
	}
	%>
	
	<ul>
	<% for (int i = 0; i < list.size(); i++) { %>
		<li><%= list.get(i) %></li>
	<% }%>
	</ul>
	
</body>
</html>