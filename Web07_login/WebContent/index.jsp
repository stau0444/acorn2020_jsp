<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String id=(String)session.getAttribute("id"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%if(id!=null) {%>
	<p>
		<a href="users/private/userinfo.jsp"><%=id%></a>님이 로그인 되었습니다
		<a href="users/logout_action.jsp">logout</a>
	</p>
	<%} %>
	<div class="container">
		<h1>인덱스 페이지 입니다.</h1>
		<ul>
			<li><a href="users/signup_form.jsp">회원가입</a></li>
			<li><a href="users/login.jsp">로그인</a></li>
			<li><a href="test/buy.jsp?code=111">111번 상품 구입 테스트</a></li>
			<li><a href="ajax/test01.jsp">ajax</a></li>
			<li><a href="ajax/test02.jsp">ajax2</a></li>
			<li><a href="ajax/test03.jsp">ajax3</a></li>
			<li><a href="file/list.jsp">자료실 목록 보기</a></li>
		</ul>
	</div>
	<!-- 현재 비밀번호와 같으면 안되게   같으면 현재 비밀번호와 같습니다 알림창 띄운다.-->
</body>
</html>