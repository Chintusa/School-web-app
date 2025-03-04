<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="/ErrorPage.jsp"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../components/allcss.jsp"%>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<%@include file="../components/navbar_index.jsp"%>
</head>
<body>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<p class="fs-4 text-center">School Admin_Login</p>

						<%
						String success = (String) session.getAttribute("success");

						if (success != null) {
						%>
						<p class="fs-4 text-success text-center col-md-20"><%=success%></p>
						<%
						session.removeAttribute("success");

						}
						%>
						<%
						String failed = (String) session.getAttribute("fail");
						if (failed != null ) {
						%>
						<p class="fs-4 text-danger text-center "><%=failed%></p>
						<%
						session.removeAttribute("fail");
						}
						%>
						<form action="../login_school" method="post">

							<div class="mb-3">
								<label class="form-label">Email</label> <input name="em"
									type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input name="pwd"
									type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						</form>

						<p class="fs-4">
							Don't have an account ?<a href="school_register.jsp"
								class="text-decoration-none text-success">Register</a>
						</p>
						<p class="fs-4">
							<a href="school_password_reset.jsp" class="text-decoration-none text-success">Forgot Password</a>
						</p>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>