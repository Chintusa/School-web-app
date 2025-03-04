<%@page import="com.org.dto.Student" errorPage="/ErrorPage.jsp" %>

	<%
Object userObject = session.getAttribute("success");

if (userObject instanceof Student) {
	Student student = (Student) userObject; 
    %>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="../main/index.jsp"><i
			class="fa-solid fa-school"></i>MoSchool</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<a class="nav-link active"
            aria-current="page" href="../student/view_student.jsp?std_id=<%=student.getId()%>"><i
                class="fa-solid fa-user"></i>Profile</a>
                </div>
			
		

			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false"><%=student.getName()%></button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="../student_Logout">Logout</a></li>
				</ul>
			</div>
			<%} %>

		
	</div>
</nav>