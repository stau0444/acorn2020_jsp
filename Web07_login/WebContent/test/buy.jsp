<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
	String code=request.getParameter("code");
%>
		<h2><%=code%>번 상품 구매완료</h2>
		<a href="${pageContext.request.contextPath}/"></a>
</body>
</html>