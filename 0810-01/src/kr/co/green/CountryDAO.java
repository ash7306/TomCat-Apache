package kr.co.green;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import kr.co.green.Country; 

public class CountryDAO {
	public List<String> getContinents() throws Exception {
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
		return list;
	}
	
	public List<Country> getCountryByContinent(String continent) throws Exception {
		List<Country> list = new ArrayList<>();
		
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
				int population = rs.getInt("Population");
				
				list.add(new Country(name , population));
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
		
		return list;
	}
	
	public List<Country> getCountryByContinent2(String continent) throws Exception {
		List<Country> list = new ArrayList<>();

		Class.forName("com.mysql.cj.jdbc.Driver");
		String query = "SELECT * FROM country where continent = ?;";
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
				int population = rs.getInt("Population");
				
				list.add(new Country(name , population));
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
		
		return list;
	}
}
