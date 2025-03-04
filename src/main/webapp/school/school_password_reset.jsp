<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Forgot Password</title>
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
					
						  <h2>Forgot Password</h2>

						<form action="../school_otp" method="post">
							
							<div class="mb-3">
								<label class="form-label">Email</label> <input
									name="em" type="email" class="form-control" required>
							</div>
							
							<button type="submit" class="btn bg-success text-white col-md-12">Send OTP</button>
						</form>

						
					</div>
				</div>
			</div>
		</div>
		</div>



  
  

</body>
</html>
