<%@page import="com.org.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Update</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<%@include file="../components/allcss.jsp"%>
	<%@include file="../components/navbar_student_home.jsp"%>
	<%
	Student s = new StudentDao().fetchStudentById(Integer.parseInt(request.getParameter("student_id")));
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<p class="fs-4 text-center"><%=s.getName().substring(0, 1).toUpperCase() + s.getName().substring(1).toLowerCase()%></p>

						<form action="../up_student" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label> <input name="nm"
									type="text" class="form-control" value="<%=s.getName()%>"
									required>
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> <input name="age"
									type="text" class="form-control" value="<%=s.getAge()%>"
									required>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile</label> <input name="mb"
									type="text" class="form-control" value="<%=s.getMobile()%>"
									required>
							</div>
							<div class="mb-3">
								<label class="form-label">Course</label>
								<input name="course"
									type="text" class="form-control" value="<%=s.getCourse()%>"
									readonly="readonly">

							</div>
							<div class="mb-3">
								<label class="form-label">Address</label>
								<input name="address"
									type="text" class="form-control" value="<%=s.getAddress()%>"
									required>

							</div>
							<div class="mb-3">
								<label class="form-label">Status</label>
								<input name="status"
									type="text" class="form-control" value="<%=s.getStatus()%>"
									readonly="readonly">

							</div>
							<div class="mb-3">
								<label class="form-label">Marks</label>
								<input name="marks"
									type="text" class="form-control" value="<%=s.getMarks()%>"
									readonly="readonly">

							</div>
							<div class="mb-3">
								<label class="form-label">Email</label>
								<input name="em"
									type="email" class="form-control" value="<%=s.getEmail()%>"
									readonly="readonly">

							</div>
							<div class="mb-3">
								<label class="form-label">Password</label>
								<input name="pwd"
									type="password" class="form-control" value="<%=s.getPassword()%>"
									readonly="readonly">
								<input name="s_id" type="hidden" class="form-control" value="<%=s.getId()%>"
									readonly="readonly">

							</div>

							<button type="submit" class="btn bg-success text-white col-md-12">Update
							</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
