<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//클라이언트가 전송한 폼 내용을 읽어온다.
	String id="uso";
	request.setCharacterEncoding("utf-8");
	String nick=request.getParameter("nick");
	//HttpSession 객체에 담는다.

	/*
	 	session 영역에 담은 데이터 삭제 되는 경우
	 	-새로운 요청을 하지 않고 30분이 경과 했을때(default)
	 	-웹브라우저를 닫았을때
	 	-HttpSession 객체의 메소드를 이용해서 제거 했을때
	*/
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>/test/save.jsp</title>
</head>
<body>
	<%if(nick.equals(id)){%>
		<%
		  session.setMaxInactiveInterval(3600);
		  session.setAttribute("nick", nick);
		%>
		<script>
			alert("로그인되었습니다");
			location.href='../index.jsp';
		</script>

	<%}else{ %>
		<script>
			alert("아이디가 잘못되었습니다.");
			location.href='../index.jsp';
		</script>
		
	<%}%>
</body>
</html>