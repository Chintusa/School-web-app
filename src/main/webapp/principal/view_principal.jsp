<%@ page language="java" contentType="text/html charset=UTF-8"
	pageEncoding="UTF-8" import="com.org.dto.Principal"
	import="java.util.List" import="com.org.dao.PrincipalDao" errorPage="/ErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../components/allcss.jsp" %>
	<%@include file="../components/navbar_principal_home.jsp"%>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-primary">Principal</p>
						<table class="table">
							<thead>
								<tr>
									<th>id</th>
									<th>Name</th>
									<th>Age</th>
									<th>Mobile</th>
									<th>Qualification</th>
									<th>Email</th>
									<th>Password</th>
									
								</tr>
							</thead>
							<tbody>
								<%
								Principal p=(Principal)session.getAttribute("success");
								if( p!=null) {
								%>
								<tr>
									<td><%=p.getId()%></td>
									<td><%=p.getName()%></td>
									<td><%=p.getAge()%></td>
									<td><%=p.getMobile()%></td>
									<td><%=p.getQualification()%></td>
									<td><%=p.getEmail()%></td>
									<td><%=p.getPassword()%></td>
									
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