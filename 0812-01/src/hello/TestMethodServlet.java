package hello;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "testMethodServlet"
			, urlPatterns = "/testMethod"
			, initParams = @WebInitParam(name = "name1", value = "value1")
			, loadOnStartup = 1)
public class TestMethodServlet extends HttpServlet {
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("해당 서블릿을 생성할 때 호출됩니다.");
		System.out.println("ServletConfig 객체는 설정한 init param에 접근가능합니다.");
		System.out.println(config.getInitParameter("name1"));
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("hello.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		doGet(req, resp);
		resp.setStatus(405);
	}
}




