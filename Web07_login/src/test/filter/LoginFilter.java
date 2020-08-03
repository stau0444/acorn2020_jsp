package test.filter;

import java.io.IOException;
import java.net.URLEncoder;

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

@WebFilter({"/users/private/* ","/test/*","/file/private/*","/gallery/private/*","/cafe/private/*"})
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
			/*
			 * 로그인 페이지로 강제로 리다일렉트 했다면 로그인 성공 후에 원래 가려던
			 * 목적지로 보내야하고
			 * get 방식 전송되는 파라미터가 있다면 파라미터 정보도 같이 가지고 다녀야 한다.
			 * 
			 */
			//원래 가려던 url 정보 읽어오기
			String url=req.getRequestURI();
			//get 방식 전송 파라미터를 query string 으로 얻어오기
			String query=req.getQueryString();
			//인코딩을 한다.
			String encodedUrl=null;
			if(query==null) {
				encodedUrl=URLEncoder.encode(url);
			}else {
				encodedUrl=URLEncoder.encode(url+"?"+query);
			}
			//로그인 폼으로 리다일렉트 이동하라고 응답
			HttpServletResponse res=(HttpServletResponse)response;
			String cPath=req.getContextPath();
			res.sendRedirect(cPath+"/users/login.jsp?url="+encodedUrl);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		
	}
	
}
