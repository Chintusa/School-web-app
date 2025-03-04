<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.School"
	import="java.util.List" import="com.org.dao.SchoolDao" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../components/allcss.jsp" %>
	<%@include file="../components/navbar_school_home.jsp" %>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-primary">School</p>
						<table class="table">
							<thead>
								<tr>
									<th>id</th>
									<th>Name</th>									
									<th>Address</th>
									<th>Email</th>
									<th>Password</th>
									
								</tr>
							</thead>
							<tbody>
								<%
								School s=(School)session.getAttribute("success");
								if( s!=null) {
								%>
								<tr>
									<td><%=s.getId()%></td>
									<td><%=s.getName()%></td>
									<td><%=s.getAddress()%></td>
									<td><%=s.getEmail()%></td>
									<td><%=s.getPassword()%></td>
									
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