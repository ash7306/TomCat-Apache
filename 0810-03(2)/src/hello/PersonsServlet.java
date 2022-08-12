package hello;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonsServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//인코딩 해줌
		req.setCharacterEncoding("utf-8");
		
		PersonsDao dao = new PersonsDao();
		String name = req.getParameter("name");
		String age = req.getParameter("age");
		String gender = req.getParameter("gender");
		
		//입력값이 유효한지
		//모든 값을 필수!
		//이름, 성 10자
		//나이 정수
		//이메일 고유 50자
		//이러한 잘못된 값일 때 사용자에게 어떻게 말해줘야 할까? 
		
		//정규표현식??
		
		PersonsValidator val = new PersonsValidator();
		Map<String, String> errors = new HashMap<String, String>();
		errors.putAll(val.isValidName(name));
		errors.putAll(val.isValidAge(age));
		errors.putAll(val.isValidGender(gender));
		
		if (errors.size() > 0) {
			req.setAttribute("errors", errors);
			req.getRequestDispatcher("inputPersons.jsp").forward(req, resp);
		}
		
		try {
			dao.setPersons(name, age, gender);
		} catch (Exception e) {
			e.printStackTrace();
		}
//		req.setAttribute("setlist", setlist);
//		req.getRequestDispatcher("index.jsp").forward(req, resp);
		resp.sendRedirect(req.getContextPath());
	}
}
