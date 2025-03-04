<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.Student"
	import="java.util.List" import="com.org.dao.StudentDao" import="com.org.dao.PrincipalDao" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../components/allcss.jsp" %>
	<%@include file="../components/navbar_principal_home.jsp" %>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-primary">Students</p>
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
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								int id=((Principal)session.getAttribute("success")).getId();
								Principal p=new PrincipalDao().fetchPrincipalById(id);
								List<Student> list = p.getStudents();
								for (Student s : list) {
								%>
								<tr>
									<td><%=s.getId()%></td>
									<td><%=s.getName()%></td>
									<td><%=s.getAge()%></td>
									<td><%=s.getMobile()%></td>
									<td><%=s.getCourse()%></td>
									<td><%=s.getAddress()%></td>
									<td><%String status=s.getStatus();
									if (status.equalsIgnoreCase("active")){%>
									<a href="../block_student?s_id=<%=s.getId()%>" class="btn btn-sm btn-danger"><i class="fa-solid fa-ban"></i>Block</a>
								<%	}else{%>
									<a href="../block_student?s_id=<%=s.getId()%>" class="btn btn-sm btn-success"><i class="fa-solid fa-ban"></i>Unblock</a>
								<%}%>	</td>
									<td><%=s.getMarks()%></td>
									<td><%=s.getEmail()%></td>
									
									<td><a href="../delete?s_id=<%=s.getId()%>" class="btn btn-sm btn-danger">Delete</a></td>
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