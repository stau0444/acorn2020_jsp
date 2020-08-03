<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%
	request.setAttribute("size", 12345678);
	request.setAttribute("price", 2500000);

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>숫자 포맷을 위한 fmt 사용하기</h1>
<%-- --%>
<p>
	파일크기는 <fmt:formatNumber value="${size }" pattern="#,###" />bytes
</p>
<%--화페일경우에 심볼을 사용하여 화폐를 표시하고 type currency를 이용하여 화폐단위로 지정해준다 --%>
<p>
	가격은 <fmt:formatNumber value="${price }" type="currency" currencySymbol="$"/>
</p>
<form action="jstl_test6.jsp" method="post">
	<textarea name="content"  cols="30" rows="5"></textarea><br/>
	<button type="submit">전송 후 다음 예제로 이동</button>
</form>
</body>
</html>