<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.Student"
	import="java.util.List" import="com.org.dao.StudentDao"
	errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Update</title>
</head>
<body>
	<%@include file="../components/allcss.jsp"%>
	<%@include file="../components/navbar_student_home.jsp"%>
	<%
	Student s = new StudentDao().fetchStudentById(((Student) session.getAttribute("success")).getId());
	if (s != null) {
	%>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-primary"><%=s.getName().substring(0, 1).toUpperCase() + s.getName().substring(1).toLowerCase()%>
						</p>
						<table class="table">
							<thead>
								<tr>
									<th>id</th>
									<th>Name</th>
									<th>Age</th>
									<th>Mobile</th>
									<th>Course</th>
									<th>Address</th>
									<th>Status</th>
									<th>Marks</th>
									<th>Email</th>
									<th>Password</th>
									<th>Action</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td><%=s.getId()%></td>
									<td><%=s.getName()%></td>
									<td><%=s.getAge()%></td>
									<td><%=s.getMobile()%></td>
									<td><%=s.getCourse()%></td>
									<td><%=s.getAddress()%></td>
									<td><%=s.getStatus()%></td>
									<td><%=s.getMarks()%></td>
									<td><%=s.getEmail()%></td>
									<td><%=s.getPassword()%></td>
									<td><a href="profile_update.jsp?student_id=<%=s.getId()%>"
										class="btn btn-sm btn-success">Update</a></td>
								</tr>

								<%
								}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>