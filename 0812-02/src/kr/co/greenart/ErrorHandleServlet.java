package kr.co.greenart;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ErrorHandleServlet
 */
@WebServlet("/errorhandle")
public class ErrorHandleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//있으면 한개 들고오고 있으면 한개 들고 옴
		Enumeration<String> e = request.getAttributeNames();
		
		while (e.hasMoreElements()) {
			String name = e.nextElement();
			System.out.println(name + " : ");
			System.out.println(request.getAttribute(name));
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
