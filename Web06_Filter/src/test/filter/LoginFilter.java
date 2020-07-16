package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//web.xml 에 필터 정의와 필터 맵핑을 어노테이션을 이용해서 할 수 있다.

@WebFilter("/member/*")
public class LoginFilter implements Filter {
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		//클라이언트가 로그인 했는지 여부를 확인한다.
		
		//부모 타입을 자식 타입으로 캐스팅 한다
		HttpServletRequest req=(HttpServletRequest)request;
		//httpsession 객체의 참조값을 얻어낸다
		HttpSession session=req.getSession();
		String id=(String)session.getAttribute("id");
		if(id!=null) {//로그인 된 상태
			//요청의 흐름 계속 진행 시키기
			chain.doFilter(request, response);
		}else {//로그인 안된 상태
			//로그인 폼으로 강제 리다일렉트 응답을 준다.
			HttpServletResponse res=(HttpServletResponse)response;
			String cPath=req.getContextPath();
			res.sendRedirect(cPath+"/test/login.jsp");
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
}
