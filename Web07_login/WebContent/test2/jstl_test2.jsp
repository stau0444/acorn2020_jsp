<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	List<String> names=new ArrayList<>();
	names.add("김구라");
	names.add("해골");
	names.add("원성이");
	request.setAttribute("list", names);
%>
<c:forEach var="tmp" items="list">
	<p>${tmp}</p>
</c:forEach>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:forEach var="a" begin="1" end="4">
<p>${a}</p>
</c:forEach>
<title>Insert title here</title>
</head>
<body>
<%
	//request 영역에 "list"라는 키값으로 담긴 값 담아오기;
	List<String> list=(List<String>)request.getAttribute("list");
%>
<%--jstl 사용안함 --%>
<h1>친구목록</h1>
<ul>
	<%for(String tmp:list){%>
		<li><%=tmp %>></li>
	<%} %>
</ul>
<%--jstl 사용 확장 for 문 역할 --%>
<c:forEach var="tmp" items="${requestScope.list}">
	<li>${tmp}</li>
</c:forEach>
<%--varStatus는 변수의 상태를 확인해주며  반복문 선언시에 varStatus="변수명"을적고 반복문안에서${변수명.index}형식으로 사용한다. --%>
<ul>
	<c:forEach var="tmp" items="${list }" varStatus="status">
		<li data-index="${status.index}">${tmp } <strong>${status.index}</strong> </li>
		<li data-index="${status.count}">${tmp } <strong>${status.count}</strong> </li>
	</c:forEach>
</ul>
<ul>
	<%--반복문을 돌면서 첫번쨰 값인지를 확인 --%>
	<c:forEach var="tmp" items="${list }" varStatus="status">
		<li>${tmp} <strong>첫번째:${status.first}</strong> </li>
	</c:forEach>

</ul>
<ul>
	<%--반복문을 돌면서 마지막 값인지를 확인 --%>
	<c:forEach var="tmp" items="${list }" varStatus="status">
		<li>${tmp} <strong>첫번째:${status.last}</strong> </li>
	</c:forEach>
</ul>
</body>
</html>