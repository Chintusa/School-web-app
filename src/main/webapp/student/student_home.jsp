<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.Student" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


<%
Student s = (Student) session.getAttribute("success");
if(s==null){
	response.sendRedirect("student_login.jsp");
}
else if(s.getStatus().equalsIgnoreCase("active")){
	
	%>
	<%@include file="../components/allcss.jsp" %>
	<%@include file="../components/navbar_student_home.jsp" %>
	
	
	   
<%}else  {
	response.sendRedirect("../block.jsp");
	session.removeAttribute("success");
}%>
<h1 class="text-center text-info font-weight-bold">Welcome to Student home page</h1>

</body>
</html>