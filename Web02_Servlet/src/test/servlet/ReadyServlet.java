package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * "/hello" 요청에 대해서 응답할 Servlet 을 만들 클래스 설계하기
 * 1.HttpServlet 클래스를 상속 받는다.
 * 2.service()메소드를 오버라이드한다.
 * 3.service() 메소드에 전달 되는 HttpServletResponse 객체를 활용해서
 * 응답하는 코드를 작성한다.
 * 4."/hello" 요청이 왔을때 실제 동작하도록 맵핑한다.
 */
@WebServlet("/ready")
public class ReadyServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//응답 인코딩 설정
		resp.setCharacterEncoding("utf-8");
		
		//응답 컨텐츠 type 설정
		//웹브라우저한테 어떤형식을 응답해줄거라고 알려준다.
		resp.setContentType("text/html; charset=utf-8");
		
		//요청을 해온 클라이언트에게 출력할 수 있는 객체의 
		PrintWriter pw=resp.getWriter();
		pw.println("<doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>ready 페이지</title>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<h1>okay!~~!!</h1>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
		//printWriter는 클라이언트 웹브라우저에 작성한 것을 출력한다
	}
}
