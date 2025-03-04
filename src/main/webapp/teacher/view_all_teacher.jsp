<%@page import="com.org.dao.PrincipalDao"%>
<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.Teacher"
	import="java.util.List" import="com.org.dao.TeacherDao" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Profile</title>
</head>
<body>
	<%@include file="../components/allcss.jsp" %>
	<%@include file="../components/navbar_principal_home.jsp"%>
	
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-primary">Teachers</p>
						<table class="table">
							<thead>
								<tr>
									<th>id</th>
									<th>Name</th>
									<th>Age</th>
									<th>Mobile</th>
									<th>Subject</th>
									<th>Salary</th>
									<th>status</th>
									<th>Email</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<%								
								int id=((Principal)session.getAttribute("success")).getId();
								List<Teacher> list = new PrincipalDao().fetchPrincipalById(id).getTeachers();
								for (Teacher t : list) {
								%>
								<tr>
									<td><%=t.getId()%></td>
									<td><%=t.getName()%></td>
									<td><%=t.getAge()%></td>
									<td><%=t.getMobile()%></td>
									<td><%=t.getSubject()%></td>
									<td><%=t.getSalaries()%></td>
									
									<td>
									<%String status=t.getStatus();
									if (status.equalsIgnoreCase("active")){%>
									<a href="../block_teacher?t_id=<%=t.getId()%>" class="btn btn-sm btn-danger"><i class="fa-solid fa-ban"></i>Block</a>
								<%	}else{%>
									<a href="../block_teacher?t_id=<%=t.getId()%>" class="btn btn-sm btn-success"><i class="fa-solid fa-ban"></i>Unblock</a>
								<%}%>			
									</td>
									
									
									<td><%=t.getEmail()%></td>
									
									<td><a href="../delete_teacher?t_id=<%=t.getId()%>" class="btn btn-sm btn-danger">Delete</a>
									<a href="update_teacher_principal.jsp?teacher_id=<%=t.getId()%>" class="btn btn-sm btn-success">Update</a>
									
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