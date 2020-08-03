<%@page import="test.cafe.dto.CafeDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String myName="황경욱";
	//page scope에 "myName"이라는 키값으로 myName 담기
	//page scope 에 담은 값은 해당 페이지(jsp) 내에서만 사용할 수있다.
	pageContext.setAttribute("myName",myName);
	
	String yourName="원숭이";
	/*
		request scope 에  "yourName"이라는 키값으로 yourName 담기
		request scope 에 담은 값은 응답하기 전까지 사용할 수 있다.
		(다른 페이지로 forward 이동해도 사용할 수 있다)
		(다른 페이지로 redirect 이동해도 사용할 수 있다)
	*/
	request.setAttribute("yourName", yourName);
	
	
	String ourName="원숭이";
	/*
		session scope에 "ourName" 이라는 키값으로 ourtName 담기
		session scope에 담은 값은 세션이 유지 되는 동안 사용할 수 있다.
		(다른 페이지로 forward,redirect 이동 해도 사용할 수있다)
		(웹브라우저를 단거나 세션을 초기화 하기 전까지 사용할 수 있다)
	*/
	session.setAttribute("ourName", ourName);
	
	
	String companyName="에이콘";
	/* 
		application scope에 "companyName"이라는 키값으로 companyName 담기
		application scope에 담은 내용은 서버를 끄기 전까지 사용할 수 있다.
		(웹브라우저를 닫아도 지워지지 않는다.)
	*/
	application.setAttribute("companyName", companyName);
	//스코프에 담아두면 키값만 선언하면  requestScop은 생략가능하고 key값만 써도 된다
	//페이지스코프-리퀘스트스코프-세션스코프-어플리케이션 순으로 찾아낸다
	
	CafeDto dto=new CafeDto();
	dto.setNum(1);
	dto.setTitle("원숭아");
	dto.setContent("놀자");
	
	/*
		request 영역에 "dto" 라는 키값으로 CafeDto type인 dto 담기
	*/
	request.setAttribute("dto", dto);
	
%>

<!-- var imgWidth=$(img).attr("width");
var imgHeight=(img).attr("height");
if(imgWidth<) -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL 로 page scope에 저장된 값 추출</h1>
	<p>내이름은 <strong>${pageScope.myName}</strong></p>

	<h1>EL로 request scope에 저장된 값 추출</h1>
	<p>너의이름은 ${requestScope.yourName}</p>
	<p>너의이름은 ${yourName}</p>
	
	<h1>EL 로 session scope 에 저장된 값 추출</h1>
	<p>우리 이름은 <strong>${sessionScope.ourName }</strong></p>
	<p>우리 이름은 <strong>${ourName }</strong></p>
	
	<h1>EL로 application scope에 저장된 값 추출</h1>
	<p>학원이름 <strong>${applicationScope.companyName}</strong></p>
	<p>학원이름 <strong>${companyName}</strong></p>
	
	<h1>EL request scope에 담긴 dto의 정보 추출</h1>
	<p>번호:${requestScope.dto.getNum() }</p>
	<p>번호:${dto.getNum() }</p>
	<p>번호:${dto.num}</p>
	
	<p>타이틀:${requestScope.dto.getTitle() }</p>
	<p>타이틀:${dto.getTitle() }</p>
	<p>타이틀:${dto.title}</p>
	
	<p>내용:${requestScope.dto.getContent() }</p>
	<p>내용:${dto.getContent() }</p>
	<p>내용:${dto.content}</p>
	
	<%--만일 EL을 사용하지 않는다면 아래와 같은 작업이 필요하다 --%>
	<%CafeDto dto2=(CafeDto)request.getAttribute("dto"); %>
	<p>내용:<%=dto2.getContent() %></p>
	<a href="el_test3.jsp?num=1&name=kimgura">다음예제</a>
	
</body>
</html>