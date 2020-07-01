package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dto.MemberDto;

@WebServlet("/member/list")

public class MemberListServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<MemberDto> list= new ArrayList<>();
		list.add(new MemberDto(1,"김구라","노량진"));
		list.add(new MemberDto(2,"해골","행신동"));
		list.add(new MemberDto(3,"원숭이","상도동"));
		
		resp.setCharacterEncoding("utf-8");
		
		resp.setContentType("text/html");
		
		PrintWriter pw=resp.getWriter();
		
		pw.println("<doctype html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<meta charset='utf-8'/>");
		pw.println("<title>회원목록 페이지</title>");
		//링크태그안의 경로는 \"나 '를 사용해준다
		pw.println("<link rel=\"stylesheet\" href=\"/Web02_Servlet/Bootstrap/css/bootstrap.css\" />");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("<div class=container>");
			pw.println("<table class='table table-dark'>");
			pw.println("<thead>");
				pw.println("<tr>");
					pw.println("<td>번호</td>");
					pw.println("<td>이름</td>");
					pw.println("<td>주소</td>");
				pw.println("</tr>");
			pw.println("</thead>");
			pw.println("<tbody>");
			for(int i=0; i<list.size(); i++) {
				pw.println("<tr>");
					pw.println("<td>"+list.get(i).getNum()+"</td>");
					pw.println("<td>"+list.get(i).getName()+"</td>");
					pw.println("<td>"+list.get(i).getAddr()+"</td>");
				pw.println("</tr>");
			}
			pw.println("</tbody>");
			pw.println("</table>");
		pw.println("<div>");
		pw.println("</body>");
		pw.println("</html>");
		pw.close();
	}
}
