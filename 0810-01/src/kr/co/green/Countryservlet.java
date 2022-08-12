package kr.co.green;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Countryservlet extends HttpServlet {
	
	//HttpServlet 제일 아래 service를 재정의 해줘야 함
	//HttpServlet 으로 만드는게 편함 (다운캐스팅)을 안해줘도 됨
	//HttpServlet상속한 클래스를 만들고 
	//그 servlet요청제어흐름을 실행시킬 수 있게 만들어 본 것
	
	@Override
									//req = request				resp = response
	protected void service(HttpServletRequest req, HttpServletResponse resp ) throws ServletException, IOException {
		//service는 특정한 주소에 따라 mapping이 되어 있으면 이 service를 실행 시킴
		//xml파일에 서블릿에 대해서 이름과 페키지.클래스를 적어줘야함
		//그다음 서블릿 맵핑으로 패턴의 이름을 부여하고 그 이름을 써서 사용함
		
		CountryDAO dao = new CountryDAO();
		String continent = req.getParameter("continent");
		List<Country> list = null;
		
		try {
			list = dao.getCountryByContinent(continent); 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		req.setAttribute("testlist", list);
		req.getRequestDispatcher("result.jsp").forward(req, resp);
		
//		req.setAttribute("title", "서블릿에서 설정한 제목");
//		req.setAttribute("message", "서블릿에서 설정한 메시지");
		
//		req.getRequestDispatcher("messageOutput.jsp").forward(req, resp);
		
	}
	
}
