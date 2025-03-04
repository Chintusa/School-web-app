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
						<p class="fs-4 text-center">Principal Login</p>
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
						<form action="../login_principal" method="post">
							
							<div class="mb-3">
								<label class="form-label">Email</label> <input
									name="em" type="email" class="form-control" required>
							</div>
							<div class="mb-3">
								<label class="form-label">Password</label> <input
									name="pwd" type="password" class="form-control" required>
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Login</button>
						</form>

						
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
	</html>