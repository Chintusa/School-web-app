<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.Teacher" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


	<%
Teacher t = (Teacher) session.getAttribute("success");
if(t==null){
	response.sendRedirect("teacher_login.jsp");
}
else if(t.getStatus().equalsIgnoreCase("active")){
	
	%>
	<%@include file="../components/allcss.jsp"%>
	<%@include file="../components/navbar_teacher_home.jsp"%>


	<%}else{ 
		response.sendRedirect("../block.jsp");
		session.removeAttribute("success");
	} %>
	<h1 class="text-center text-info">Welcome to Teacher home page</h1>

</body>
</html>