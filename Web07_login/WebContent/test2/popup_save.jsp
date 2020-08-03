<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String canP=request.getParameter("canPopup");
	if(canP!=null){
		Cookie cook=new Cookie("canPopup",canP);
		cook.setMaxAge(5);
		response.addCookie(cook);
		  
		  
		

	}else{
		Cookie cook=new Cookie("canPopup",canP);
		cook.setMaxAge(0);
		response.addCookie(cook);
	}
%>
<script>
	self.close();
</script>

<!-- 
팝업순서 
팝업이 뜬다 - 체크를하거나 안한다- 체크박스의 값을 save에서 불러오고 판단한다




 -->