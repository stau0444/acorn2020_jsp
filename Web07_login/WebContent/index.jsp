<%@page import="test.users.dto.UsersDto"%>
<%@page import="test.users.dao.UsersDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String id=(String)session.getAttribute("id");
	UsersDto dto=UsersDao.getInstance().userInfo(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#userImg{
		width:100px;
		height:100px;
		border:2px solid #cecece;
		border-radius:50%;
		
	}
</style>
</head>
<body>
	<c:if test="${not empty id}">
		<p>	
			<img id="userImg" src="${pageContext.request.contextPath}<%=dto.getProfile()%>" alt="" />
			<a href="users/private/userinfo.jsp">${id}</a>님이 로그인 되었습니다
			<a href="users/logout_action.jsp">logout</a>
		</p>
	</c:if>

	<div class="container">
		<h1>인덱스 페이지 입니다.</h1>
		<ul >
			<li><a href="users/signup_form.jsp">회원가입</a></li>
			<li><a href="users/login.jsp">로그인</a></li>
			<li><a href="test/buy.jsp?code=111">111번 상품 구입 테스트</a></li>
			<li><a href="ajax/test01.jsp">ajax</a></li>
			<li><a href="ajax/test02.jsp">ajax2</a></li>
			<li><a href="ajax/test03.jsp">ajax3</a></li>
			<li><a href="file/list.jsp">자료실 목록 보기</a></li>
			<li><a href="gallery/test.jsp">이미지 업로드 테스트</a></li>
			<li><a href="gallery/test2.jsp">ajax 이미지 업로드 테스트</a></li>
			<li><a href="gallery/list.jsp">이미지 갤러리</a></li>
			<li><a href="test/editor.jsp">SmartEditor 테스트</a></li>
			<li><a href="test2/login_cookieForm.jsp">쿠키 테스트</a></li>
			<li><a href="test2/popup_page.jsp">팝업 페이지</a></li>
			<li><a href="test2/popup2.jsp">팝업 페이지</a></li>
			<li><a href="test2/el_test.jsp">EL 테스트</a></li>
			<li><a href="test2/el_test2.jsp">EL 테스트2</a></li>
			<li><a href="test2/el_test3.jsp">EL 테스트3</a></li>
			<li><a href="test2/jstl_test.jsp">jstl test1</a></li>
			<li><a href="test2/jstl_test3.jsp">jstl test3</a></li>
			<li><a href="test2/jstl_test4.jsp">jstl test4</a></li>
			<li><a href="regular_ex.jsp">다음예제</a></li>
			<li><a href="regular_ex2.jsp">다음예제</a></li>
		</ul>
	</div>
	<!-- 현재 비밀번호와 같으면 안되게   같으면 현재 비밀번호와 같습니다 알림창 띄운다.-->
</body>
</html>