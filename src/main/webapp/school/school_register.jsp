<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../components/allcss.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">

</head>
<body>
	<%@include file="../components/navbar.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">Register School</p>
						
	
						<form action="../register_school" method="post">
							<div class="mb-3">
								<label class="form-label">Name</label> <input name="nm"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Address</label> <input name="add"
									type="text" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Email Address</label> <input
									name="em" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="pwd" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Register</button>
						</form>

						<p class="fs-4">
							Already have an account ?<a href="school_login.jsp"
								class="text-decoration-none text-success">Login</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>