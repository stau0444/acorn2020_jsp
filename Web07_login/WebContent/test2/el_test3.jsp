<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>EL 이용해서 get 방식 파라미터 or POST 방식 파라미터도 추출할 수있다.</h1>
<p>번호: <strong>${param.num}</strong></p>
<p>이름: <strong>${param.name}</strong></p>

<%--만일 EL을 사용하지 않는다면 아래와 같은 작업이 필요하다 --%>
<%
	String num=request.getParameter("num");
	String name=request.getParameter("name");
%>
<p>번호<strong><%=num %></strong></p>
<p>이름<strong><%=name %></strong></p>

<h1>EL 이용해서 쿠키 value도 추출 할 수 있다.</h1>
<p>쿠키에 savedMsg 라는 키값으로 저장되 있는지 여부:${not empty cookie.pwd.value}</p>
<p>savedMsg라는 키값으로 저장된 값:${cookie.pwd.value}</p>
</body>
</html>