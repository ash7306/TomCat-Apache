package kr.co.greenart;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class viewCookie
 */
@WebServlet("/editCookies")
public class EditCookieServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie c = new Cookie("yourname", "edit");
		response.addCookie(c);
		
		Cookie c2 = new Cookie("korname", "");
		c2.setMaxAge(0);
		//만료 기간 설정 (초단위)
		
		response.addCookie(c2);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
	
