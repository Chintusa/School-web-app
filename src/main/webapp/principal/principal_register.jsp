<%@page import="com.org.dao.SchoolDao"%>
<%@page import="com.org.dto.Principal"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.School"
	errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<%@include file="../components/allcss.jsp"%>
	<%@include file="../components/navbar_school_home.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<%
						int id=((School)session.getAttribute("success")).getId();								
						Principal p=new SchoolDao().fetchSchoolById(id).getPrincipal();
						
						
                    	if(p==null){
                      	%>
						<p class="fs-4 text-center">Add Principal</p>
						<form action="../register_principal" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label> <input name="nm"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> <input name="age"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label> <input name="qf"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile</label> <input name="mb"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input name="em"
									type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input name="pwd"
									type="password" class="form-control" required>
							</div>
							<div class="mb-3">

								<input type="hidden" name="school_id" value="<%=id%>" />
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Add</button>
						</form>
						<%}
						%>
						

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>