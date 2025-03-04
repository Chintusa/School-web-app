<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Register</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>
<body>
	<%@include file="../components/allcss.jsp"%>
	<%@include file="../components/navbar_principal_home.jsp"%>
	<%
	int p_id=((Principal)session.getAttribute("success")).getId();
	
	%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Add Teacher</p>
						<form action="../register_teacher" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label> <input name="nm"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Age</label> <input name="age"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Subject</label> <input name="subject"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Mobile</label> <input name="mb"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Salary</label> <input name="salary"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Status</label> <input name="status"
									type="text" value="active" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input name="em"
									type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input name="pwd"
									type="password" class="form-control" required>
							</div>
							<input type="hidden" name="p_id" value="<%=p_id%>">
							<button type="submit" class="btn bg-success text-white col-md-12">Add</button>
						</form>


					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>