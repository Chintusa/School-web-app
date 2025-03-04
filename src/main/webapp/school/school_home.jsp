<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.School" import="com.org.dto.Principal" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>


<%
School success = (School) session.getAttribute("success");
if(success==null){
	response.sendRedirect("school_login.jsp");
}
else{
	
	%>
	<%@include file="../components/allcss.jsp" %>
	<%@include file="../components/navbar_school_home.jsp" %>
	
	   
<%

} %>
<h1 class="text-center text-info">Welcome to School Home </h1>

</body>
</html>