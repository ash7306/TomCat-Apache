package hello;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonsServlet2 extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PersonsDao dao = new PersonsDao();
		try {
			List<Persons> getlist = dao.getPersonsList();
			req.setAttribute("getlist", getlist);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//req.getRequestDispatcher("inputPersons.jsp").forward(req, resp);
		req.getRequestDispatcher("readPersons.jsp").forward(req, resp);
	}
}
