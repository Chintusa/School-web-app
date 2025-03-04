<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reset Password</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<%@include file="../components/allcss.jsp"%>
<%@include file="../components/navbar.jsp"%>
<style>

.paint-card {
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
	border-radius: 20px;
	padding: 20px;
}
</style>
</head>
<body>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="car paint-card">
					<div class="card-body">
						<form action="../otp_reset_school" method="post"
							onsubmit="return validateForm()">
							<div class="mb-3">
								<label class="form-label">Enter the OTP</label> <input
									name="Entered_otp"  type="text" class="form-control"
									required>
							</div>
							<%
							int otp = (int) request.getAttribute("otp");
							String email = (String) request.getAttribute("email");
							%>
							<div class="mb-3">
								<label class="form-label">New Password</label> <input
									name="pwd" id="p_1" type="password" class="form-control"
									required>
							</div>
							<div class="mb-3">
								<label class="form-label">Re-Enter Password</label> <input
									 id="p_2" type="password" class="form-control"
									required> <input name="em" type="hidden"
									class="form-control" value="<%=email%>"> <input
									name="generated_otp" type="hidden" class="form-control"
									value="<%=otp%>">
							</div>
							<button type="submit" class="btn bg-success text-white col-md-12">Reset</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function validateForm() {
			var pwd1 = document.getElementById("p_1").value;
			var pwd2 = document.getElementById("p_2").value;
			if (pwd1 !== pwd2) {
                alert("Passwords do not match. Please re-enter.");
                return false;
            }
            return true;
        }
		
	</script>
</body>
</html>
