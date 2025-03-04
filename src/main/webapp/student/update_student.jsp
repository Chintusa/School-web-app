<%@page import="com.org.dto.Student"%>
<%@page import="com.org.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student Profile</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<%@include file="../components/allcss.jsp"%>
	<%@include file="../components/navbar_teacher_home.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Update Profile</p>
						<%
						int id = Integer.parseInt(request.getParameter("student_id"));
						Student student = new StudentDao().fetchStudentById(id);
						%>
						<form action="../update_student" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label> <input name="nm"
									type="text" class="form-control"
									value="<%=student.getName()%>" readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> <input name="age"
									type="text" class="form-control"
									value="<%=student.getAge()%>" readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile</label> <input name="mb"
									type="text" class="form-control"
									value="<%=student.getMobile()%>" readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Course</label> <input name="course"
									type="text" class="form-control"
									value="<%=student.getCourse()%>" readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input name="address"
									type="text" class="form-control"
									value="<%=student.getAddress()%>" readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Status</label> <input name="status"
									type="text" class="form-control"
									value="<%=student.getStatus()%>" readonly>
							</div>
							<div class="mb-3">
								<label class="form-label">Marks</label> <input name="marks"
									type="text" class="form-control"
									value="<%=student.getMarks()%>" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input name="em"
									type="email" class="form-control"
									value="<%=student.getEmail()%>" readonly> <input
									type="hidden" name="id" value="<%=id%>">
							</div>

							<button type="submit" class="btn bg-success text-white col-md-12">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
