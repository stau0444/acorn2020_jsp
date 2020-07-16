<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--/include/navbar.jsp--%>
<%
	//요청 파라미터 읽어내기
String thisPage = request.getParameter("thisPage");

%>

<div>
	navbar입니다. <strong><%=thisPage%></strong>에 포함되었음
	<nav class="navbar navbar-expand-lg navbar-dark bg-success">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
					<a class="nav-item nav-link <%if(thisPage.equals("index")){ %>active<%}%>" href="../test5/index.jsp">index </a> 
					<a class="nav-item nav-link <%if(thisPage.equals("home")){ %>active<%}%>" href="../test5/home.jsp">home</a> 
					<a class="nav-item nav-link <%if(thisPage.equals("game")){ %>active<%}%>" href="../test5/game.jsp">game</a>
					<a class="nav-item nav-link <%if(thisPage.equals("study")){ %>active<%}%>" href="../test5/study.jsp" tabindex="-1"aria-disabled="true">study</a>
			</div>
		</div>
	</nav>
</div>