package test.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/fortune")
public class FortuneServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String fortuneToday="동쪽가면 좋다";
		//최초 요청은 서블릿이 받고
		//jsp 페이지로 응답을 위임한다.(foward);
		//컨텍스트 경로를 쓰지 않는다.
		req.setAttribute("fortuneToday", fortuneToday);
		RequestDispatcher rd=req.getRequestDispatcher("/test/fortune.jsp");
		
		rd.forward(req, resp);
		//서블릿의 req,resp를 전달받아 fortune.jsp(view)에서 사용한다.
		//비지니스로직 수행은 서블릿에서하고 처리결과는 jsp에서 응답한다 처리결과는 req객체에 담겨서 jsp로 전달된다.
		//(request 영역(scope에 담는다)
		
	}
}
