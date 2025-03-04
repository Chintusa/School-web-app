<%@page import="com.org.dao.PrincipalDao" import="com.org.dto.Teacher"
	import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../components/allcss.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>

	<%@include file="../components/navbar_principal_home.jsp"%>
	<%
	int id=((Principal) session.getAttribute("success")).getId();

	List<Teacher> teachers =new PrincipalDao().fetchPrincipalById(id).getTeachers();
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Add Student</p>
						<form action="../register_student" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label> <input name="nm"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> <input name="age"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile</label> <input name="mb"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Course</label> <select
									class="course form-control" name="t_id">
									<%
									for (Teacher t : teachers) {
									%>
									<option value="<%=t.getId()%>"><%=t.getSubject()%></option>
									<%
									}
									%>

								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input name="address"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Status</label> <input name="status"
									type="text" value="active" class="form-control" readonly="readonly">
							</div>
							<div class="mb-3">
								<label class="form-label">Marks</label> <input name="marks"
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

							<button type="submit" class="btn bg-success text-white col-md-12">Add
								Student</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>