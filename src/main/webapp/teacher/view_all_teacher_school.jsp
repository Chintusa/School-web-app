<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.Teacher"
	import="java.util.List" import="com.org.dao.TeacherDao"  import="com.org.dao.PrincipalDao" import="com.org.dao.SchoolDao" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teacher Profile</title>
</head>
<body>
	<%@include file="../components/allcss.jsp" %>
	<%@include file="../components/navbar_school_home.jsp"%>
	
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
									
								</tr>
							</thead>
							<tbody>
								<%
								int id=((School)session.getAttribute("success")).getId();
								
								List<Teacher> list=new SchoolDao().fetchSchoolById(id).getPrincipal().getTeachers();
													
								for (Teacher t : list) {
								%>
								<tr>
									<td><%=t.getId()%></td>
									<td><%=t.getName()%></td>
									<td><%=t.getAge()%></td>
									<td><%=t.getMobile()%></td>
									<td><%=t.getSubject()%></td>
									<td><%=t.getSalaries()%></td>
									<td><%=t.getStatus()%></td>
									<td><%=t.getEmail()%></td>
									
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