package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.security.pkcs11.Secmod.DbMode;
@WebServlet ("/sub/fortune")
public class FortuneServlet extends	HttpServlet{
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
			pw.println("<title>오늘의운세</title>");
			pw.println("</head>");
			pw.println("<body>");
			String [] fortune= {"좋음","나쁨","개나쁨","개좋음","그냥그럼","죽어라걍"};
			int ranNum=new Random().nextInt(fortune.length);
			pw.println("<p>오늘의운세 : "+fortune[ranNum]+"</p>");
			pw.println("<img src='/Web02_Servlet/images/kim1.png'/>");
			pw.println("</body>");
			pw.println("</body>");
			pw.println("</html>");
			pw.close();
		}
		
}
