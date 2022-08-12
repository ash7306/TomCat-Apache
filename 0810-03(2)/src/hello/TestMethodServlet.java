package hello;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 어노테이션. 
// 이름, 값 설정 (web.xml에서와 마찬가지로 서블릿 이름, 서블릿매핑에서의 url-pattrn)
// 실행 시에 읽고 해석한다. web.xml에 등록 없이 실행.
@WebServlet(name = "testMethodServlet", urlPatterns = "/testMethod", initParams = @WebInitParam(name = "name1", value = "value1")
, loadOnStartup = 1)
// loadOnStartup은 순서를 준다.
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
		// 405는 자원이 있지만, 클라이언트가 지원하지 않는 방식을 요청할 때 보내는 상태.
	}
}