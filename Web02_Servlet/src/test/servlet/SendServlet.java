package test.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.dao.MemoDao;
import test.dto.MemoDto;
@WebServlet("/send")
public class SendServlet extends HttpServlet {
		
//	@Override
//	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		req.setCharacterEncoding("utf-8");
//		resp.setCharacterEncoding("utf-8");
//		resp.setContentType("text/html; utf-8");
//		
//		String reqst=req.getParameter("msg");
//		System.out.println(reqst);
//		
//		PrintWriter wr=resp.getWriter();
//		wr.println(reqst+"가 전송되었습니다");
//	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; utf-8");
		
		String reqst=req.getParameter("msg");
		
		MemoDto dto=new MemoDto();
		dto.setContents(reqst);
		MemoDao dao=MemoDao.getInstance();
		dao.insert(dto);
		
		System.out.println(reqst);
		
		PrintWriter wr=resp.getWriter();
		wr.println(reqst+"가 전송되었습니다");
		
	}
}
