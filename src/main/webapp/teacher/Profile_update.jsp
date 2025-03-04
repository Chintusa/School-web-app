<%@page import="com.org.dto.Teacher"%>
<%@page import="com.org.dao.TeacherDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Update</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<%@include file="../components/allcss.jsp"%>
	<%@include file="../components/navbar_teacher_home.jsp"%>
	<%
	Teacher t = new TeacherDao().fetchTeacherById(Integer.parseInt(request.getParameter("teacher_id")));
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<p class="fs-4 text-center"><%=t.getName().substring(0, 1).toUpperCase() + t.getName().substring(1).toLowerCase()%></p>

					  	

						<form action="../up_teacher" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label> <input name="nm"
									type="text" class="form-control" value="<%=t.getName()%>"
									required="required">
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> <input name="age"
									type="text" class="form-control" value="<%=t.getAge()%>"
									required="required">
							</div>
							<div class="mb-3">
								<label class="form-label">Subject</label> <input name="subject"
									type="text" class="form-control" value="<%=t.getSubject()%>"
									readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile</label> <input name="mb"
									type="text" class="form-control" value="<%=t.getMobile()%>"
									required="required">
							</div>
							<div class="mb-3">
								<label class="form-label">Salary</label> <input name="salary"
									type="text" class="form-control" value="<%=t.getSalaries()%>"
									readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Status</label> <input name="status"
									type="text" class="form-control" value="<%=t.getStatus()%>"
									readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input name="em"
									type="email" class="form-control" value="<%=t.getEmail()%>"
									readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input name="em"
									type="password" class="form-control" value="<%=t.getPassword()%>"
									readonly>
							</div>

							<input type="hidden" name="teacher_id" value="<%=t.getId()%>">
							<button type="submit" class="btn bg-success text-white col-md-12">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
