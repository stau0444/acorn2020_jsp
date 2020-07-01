package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/users/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		// 응답 컨텐츠 type 설정
		// 웹브라우저한테 어떤형식을 응답해줄거라고 알려준다.
		resp.setContentType("text/html; charset=utf-8");
		
		String id=req.getParameter("id");
		String pwd=req.getParameter("pwd");
		// 요청을 해온 클라이언트에게 출력할 수 있는 객체의
		PrintWriter pw = resp.getWriter();
		pw.println("<doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>오늘의운세</title>");
		pw.println("</head>");
		pw.println("<body>");
		
		if(id.equals("gura")&&pwd.equals("1234")) {
			pw.println("<a class=href='/Web02_Servlet/index.html'>gura님이 로그인 되었습니다</a>");
			System.out.println("로그인성공");
		}else{
			pw.println("아이디 혹인 비밀번호가 잘못 되었습니다.");
			System.out.println("로그인실패");
		}
		pw.println("</body>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
