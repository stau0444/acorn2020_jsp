<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	request.setAttribute("jumsu", 95);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%--jstl에서의 if문 --%>
<body>
	<c:if test="${10%2 eq 0}">
		<p>10은  짝수 이다</p>
	</c:if>
	<%-- session 영역에 id 라는 키값으로 저장 된 값이 비어있지 않다면 
				저장된값이 있다면 or 로그인된 상태라며--%>
	<c:if test="${not empty sessionScope.id}">
		<p><strong>${id}</strong>님 로그인중</p>
	</c:if>
	<%-- 스위치문과 같다 --%>
	<p>획득한 점수는 <strong>${jumsu }</strong>입니다</p>	
	<p>
		학점은
		<c:choose>
			<c:when test="${jumsu ge 90}">a 입니다</c:when>
			<c:when test="${jumsu ge 80}">b 입니다</c:when>
			<c:when test="${jumsu ge 70}">c 입니다</c:when>
			<c:when test="${jumsu ge 60}">d 입니다</c:when>
			<c:when test="${jumsu ge 50}">f 입니다</c:when>
			<c:otherwise>f 입니다</c:otherwise>
		</c:choose>
		입니다
	</p>
	<%-- if else 문 역할 --%>
	<p>
		<strong>${jumsu }</strong>
		<c:choose>
			<c:when test="${jumsu%2 eq 0}">
				<storng>짝수</storng>
			</c:when>
			<c:otherwise>
				<strong>홀수</strong>
			</c:otherwise>
		</c:choose>
	</p>
	<a href="jstl_test5.jsp">다음예제</a>
</body>
</html>