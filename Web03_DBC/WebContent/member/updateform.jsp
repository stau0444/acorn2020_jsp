<%@page import="test.dto.MemberDto"%>
<%@page import="test.dao.MemberDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. GET 방식 파리미터로 전달되는 수정할 회원의 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당회원 한명의 정보를 읽어온다.
	MemberDao dao=MemberDao.getInstance();
	MemberDto dto=dao.getData(num);
	//3. 읽어온 회원한명의 정보를 form 에 출력해서 응답한다. 
%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/Web03_DBC/css/bootstrap.css" />
<meta charset="UTF-8">
<title>/member/updateform.jsp</title>
</head>
<body>
	 <div class="navbar navbar-expand-sm navbar-dark bg-primary">
	 	<a href="${pageContext.request.contextPath}" class="navbar-brand">UGO</a>
	 	<div >
		 	<ul class="navbar-nav mr-auto">
		 		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/member/list.jsp">Member</a></li>
		 		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/todo/todo.jsp">Todo</a></li>
		 	</ul>
	 	</div>
	 </div>
	<div class="container">
		<h1>회원정보 수정 폼 입니다.</h1>
		<form action="update.jsp" method="post" class="form-group">
			<%-- form 을 제출했을때 회원의 번호가 전송되도록 input type="hidden" 
			에 회원 번호를 출력해 놓는다. --%>
			<input type="hidden" name="num" value="<%=dto.getNum() %>" class="form-control"/>
			<label for="num">번호</label>
			<!-- disabled 속성이 추가된 input 요소는 수정이 불가하고 form 을
			제출했을때 전송도 되지 않는다 -->
			<input type="text" id="num" value="<%=dto.getNum()%>" disabled/class="form-control"><br/>
			<label for="name">이름</label>
			<input type="text" name="name" id="name" value="<%=dto.getName() %>" class="form-control"/><br/>
			<label for="addr">주소</label>
			<input type="text" name="addr" id="addr" value="<%=dto.getAddr() %>"class="form-control"/><br/>
			<button type="submit" class="btn btn-primary">수정</button>
			<button type="reset" class="btn btn-danger">취소</button>
		</form>
		<img src="http://image.kyobobook.co.kr/images/book/xlarge/979/x9788952241979.jpg" alt="" />
	</div>