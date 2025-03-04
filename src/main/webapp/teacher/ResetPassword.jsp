<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="/ErrorPage.jsp" import="com.org.dto.Teacher"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Login</title>
<%@include file="../components/allcss.jsp"%>
<link rel="stylesheet" type="text/css" href="../css/style.css">
	<%@include file="../components/navbar_teacher_home.jsp"%>
</head>
<body>

	
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
					
						<%int id=((Teacher)session.getAttribute("success")).getId(); %>
						<form action="../reset_teacher_pwd" method="post">
							
							<div class="mb-3">
								<label class="form-label">New Password</label> <input
									name="pwd1" type="password" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Re-Enter Password</label> <input
									name="pwd2" type="password" class="form-control" required>
								 <input name="t_id" type="hidden" class="form-control"  value="<%=id%>">
									
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Reset Password</button>
						</form>

						
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
	</html>