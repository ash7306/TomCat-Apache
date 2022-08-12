package hello;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	private int some = 10;
	
	public HelloServlet() {
		super();
		System.out.println("헬로서블릿 생성자는 언제 호출되나요?");
		//요청할 때 ctrl+f11 로 실행할때 호출됨
		//웹사이트에서 새로고침할땐 생성 안됨.. 왜?
		//객체로 요청 받은걸 만들어 놓고 사용하기 때문
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter pw = resp.getWriter();
		pw.print(req.getRequestURL());
		pw.flush();
		some++;
		System.out.println("필드 값: " + some);
		//실행흐름이 사용자가 매번 요청 할때 마다 발생 
		//그럼 여러 사용자가 같은 서블릿에 실행 흐름을 가진다면?
		//사용자가 서로의 필드값에 대한 정확한 값을 가질 수가 없다
	}
}
