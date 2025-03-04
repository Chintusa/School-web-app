<%@page import="com.org.dto.Teacher" errorPage="/ErrorPage.jsp" %>
		<%
Object userObject = session.getAttribute("success");

if (userObject instanceof Teacher) {
	Teacher teacher = (Teacher) userObject; 
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
		<a class="nav-link active"
            aria-current="page" href="../teacher/view_teacher.jsp"><i
                class="fa-solid fa-user"></i>Profile</a>
                
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">		
    
    <li class="nav-item"><a class="nav-link active"
            aria-current="page" href="../student/view_all_student_teacher.jsp"><i
                class="fa-solid fa-user"></i>View Students</a></li>    
    

</ul>





			

			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false"><%=teacher.getName()%></button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="../teacher_Logout">Logout</a></li>									
			
					<li><a class="dropdown-item"
						href="../reset?email=<%=teacher.getEmail()%>&pwd=<%=teacher.getPassword()%>">Change
							password</a></li>
				
			
				</ul>
			</div>
			<%} %>

		</div>
	</div>
</nav>