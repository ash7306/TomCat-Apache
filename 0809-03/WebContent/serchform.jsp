<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 사용자가 대륙을 선택할 수 있게
	전송을 누르면 선택한 대륙의 국가의 이름과 인구까지 출력 할 수 있게
	인구는 내림차순 정렬--%>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	List<String> list = new ArrayList<>();

	try {
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/world", "root", "root");
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select distinct continent from country;");
		//익스큐트쿼리는 셀렉문
		//익스큐트업데이트 다른 명령문
		
		while (rs.next()) {
			String continent = rs.getString("continent");
			list.add(continent);
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
	
	%>
	
	<form action="worldcountry.jsp" method="post">
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