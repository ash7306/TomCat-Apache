package hello;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hello.Persons;
import hello.PersonsDao;
import hello.PersonsValidator;

public class PersonServlet extends HttpServlet {
	// doGet doPost가 결국 service메소드로 변환되어 호출된다. 각각의 메소드 방식에 맞춰서 doGet이나 doPost를 오버라이드 해준다.
	// method가 get이면 무조건 Override를 해주는것이 좋다.
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect(req.getContextPath() + "/form.jsp");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 이전에 service를 Override하였는데 doGet, doPost이 있기 때문에 service는 오버라이드 할 필요가 없다.
		// 한글 깨짐 방지 (form method를 post로 받을 때)
		req.setCharacterEncoding("utf-8");

		String firstName = req.getParameter("firstname");
		String lastName = req.getParameter("lastname");
		String age = req.getParameter("age");
		String email = req.getParameter("email");

		// 유효한 입력값 받기.
		PersonsValidator validator = new PersonsValidator();
		Map<String, String> errors = new HashMap<String, String>();
		errors.putAll(validator.isValidName(firstName));
		errors.putAll(validator.isValidName(lastName));
		errors.putAll(validator.isValidAge(age));
		errors.putAll(validator.isValidEmail(email));

		if (errors.size() > 0) {
			// 그러면 잘못된 값일 때 사용자에게 뭐라고 알려줌????
			req.setAttribute("errors", errors);
			req.getRequestDispatcher("form.jsp").forward(req, resp);
		} else {

			PersonsDao dao = new PersonsDao();
			try {
				dao.insert(new Persons(firstName, lastName, Integer.valueOf(age), email));
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}

			// 나중에 목록 페이지로 보낼 거임~;
			resp.sendRedirect(req.getContextPath() + "/list");
		}
	}
}
