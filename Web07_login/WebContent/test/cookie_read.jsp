<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//HttpServletRequest 객체를 이용해서 요청과 함께 전달된 쿠키 읽어내기
	//클라이언트에서 서버에 요청할 때 쿠키가 여러개 있을 수도 있다.
	Cookie [] cookies=request.getCookies();
	//"savedMsg" 라는 키값으로 저장된 문자열을 저장할 변수
	String savedMsg=null;
	if(cookies!=null){
		for(Cookie tmp:cookies){
			String key=tmp.getName();
			if(key.equals("savedMsg")){
				//해당 키값으로 저장된 value를 읽어낸다.
				savedMsg=tmp.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>savedMsg 라는 키값으로 저장된 문자열 : <%=savedMsg %></p>
	<a href="cookie_form.jsp">다시 테스트</a>
</body>
</html>