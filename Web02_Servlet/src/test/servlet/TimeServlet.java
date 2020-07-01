package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/time")
public class TimeServlet extends HttpServlet {
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
				pw.println("<title>현재 시간 페이지</title>");
				pw.println("</head>");
				pw.println("<body>");
				Date d1=new Date();
				String now= d1.toString();
				pw.println("<p>현재시간 : "+now+"</p>");
				pw.println("<img src= '/Web02_Servlet/images/kim1.png'/>");
				
				pw.println("</body>");
				pw.println("</html>");
				pw.close();
				//printWriter는 클라이언트 웹브라우저에 작성한 것을 출력한다
		
	}
}
