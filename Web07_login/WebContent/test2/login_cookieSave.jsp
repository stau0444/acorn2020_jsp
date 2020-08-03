<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id =request.getParameter("id");
	String pwd =request.getParameter("pwd");
	String isSaved=request.getParameter("isSaved");
	//체크박스안되있으면 쿠키를 지워준다.
	if(isSaved==null){
		//키값이 id value가 id 인 쿠키객체 생성
		Cookie userid= new Cookie("id",id);
		//쿠기 유효시간을 0으로 만들어 지워준다
		userid.setMaxAge(0);	
		//브라우저에 쿠키를 응답한다.
		response.addCookie(userid);
		
		Cookie userpwd= new Cookie("pwd",pwd);
		//키값이 pwd value가 pwd 인 쿠키객체 생성
		userpwd.setMaxAge(0);
		//쿠기 유효시간을 0으로 만들어 지워준다
		response.addCookie(userpwd);
		//브라우저에 쿠키를 응답한다.
	}else{
	//체크되 있으면 쿠키를 저장한다.
		Cookie userid= new Cookie("id",id);
		userid.setMaxAge(60);	
		response.addCookie(userid);
		
		Cookie userpwd= new Cookie("pwd",pwd);
		userpwd.setMaxAge(60);
		response.addCookie(userpwd);
	}
	//1. 쿠키 객체 생성 new Cookie("key",value);
	//2. 쿠키 유지시간(초단위)
	//3.HttpServletResponse 객체에 담는다
	//4.응답할때 쿠키가 자동으로 응답되고 클라이언트의 웹브라우저에 저장이 된다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="login_cookieForm.jsp">저장된 문자열 확인</a>
</body>
</html>