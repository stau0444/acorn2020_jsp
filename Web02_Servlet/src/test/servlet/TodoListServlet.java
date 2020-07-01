package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.corba.se.pept.transport.Connection;

import sun.security.pkcs11.Secmod.DbMode;
import test.dao.MemoDao;
import test.dto.MemberDto;
import test.dto.MemoDto;
import test.util.DBConnect;
@WebServlet ("/todo/list")
public class TodoListServlet extends HttpServlet{
		@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			MemoDao dao=MemoDao.getInstance();
			List<MemoDto>list=dao.getList();
			
//			List<String> list=new ArrayList<>();
//			list.add("html공부하기");
//			list.add("css공부하기");
//			list.add("javascript공부하기");
//			
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
					pw.println("<title>할일 목록페이지</title>");
					pw.println("<link rel=\"stylesheet\" href=\"/Web02_Servlet/Bootstrap/css/bootstrap.css\" />");
					pw.println("</head>");
					pw.println("<body>");
					pw.println("<h1>할일 목록</h1>");
					
					pw.println("<ul  class='list-group'>");
					for(int i=0; i<list.size(); i++) {
			
						MemoDto dto=new MemoDto();
						dto.setNum(list.get(i).getNum());
						dto.setContents(list.get(i).getContents());
						dto.setRegdate(list.get(i).getRegdate());
						pw.println("<li class='list-group-item-action'>"+dto.getNum()+"&nbsp;&nbsp;&nbsp;"+dto.getContents()+"&nbsp;&nbsp;&nbsp;"+dto.getRegdate()+"</li>");
						}
					pw.println("</ul>");
					
					pw.println("</body>");
			pw.println("</html>");
			pw.close();
		}
		
}
