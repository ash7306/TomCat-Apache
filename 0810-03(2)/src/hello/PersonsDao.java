package hello;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import hello.Persons; 

public class PersonsDao {
	public List<Persons> setPersons(String name, String age, String gender) throws Exception { 
		Class.forName("com.mysql.cj.jdbc.Driver");
		String query = "INSERT INTO persons2 (name, age, gender) VALUES (?, ?, ?)";
		
		List<Persons> list = new ArrayList<>();

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_db", "root", "root");
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, age);
			pstmt.setString(3, gender);
			pstmt.executeUpdate();
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
		return list;
	}
	
	public List<Persons> getPersonsList() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
//		Connection conn = null;
//		Statement stmt = null;
//		ResultSet rs = null;
		List<Persons> list = new ArrayList<>();
		
		try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_db", "root", "root");
			Statement stmt = conn.createStatement();
			ResultSet	rs = stmt.executeQuery("select * from persons2;");) {
			
			while (rs.next()) {
				String name = rs.getString("name");
				String age = rs.getString("age");
				String gender = rs.getString("gender");
				
				list.add(new Persons(name, age, gender));
			}
		} 
		
//		finally {
//			if (rs != null) {
//				rs.close();
//			}
//			if (stmt != null) {
//				stmt.close();
//			}
//			if (conn != null) {
//				conn.close();
//			}
//		}
		return list;
	}
}
