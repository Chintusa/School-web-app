<%@page import="com.org.dto.Principal"  %>

<%
Object userObject = session.getAttribute("success");

if (userObject instanceof Principal) {
    Principal principal = (Principal) userObject; 
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
            aria-current="page" href="../principal/view_principal.jsp"><i
                class="fa-solid fa-user"></i>Profile</a>
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

    

  
    <li class="nav-item dropdown">
        <a class="nav-link active dropdown-toggle" href="#" id="teacherDropdown" role="button"
            data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user"></i>Teacher
        </a>
        <ul class="dropdown-menu" aria-labelledby="teacherDropdown">
            <li><a class="dropdown-item" href="../teacher/teacher_register.jsp">Add Teacher</a></li>
            <li><a class="dropdown-item" href="../teacher/view_all_teacher.jsp">View Teachers</a></li>
           
        </ul>
    </li>

    
    <li class="nav-item dropdown">
        <a class="nav-link active dropdown-toggle" href="#" id="studentDropdown" role="button"
            data-bs-toggle="dropdown" aria-expanded="false">
            <i class="fa-solid fa-user"></i>Student
        </a>
        <ul class="dropdown-menu" aria-labelledby="studentDropdown">
            <li><a class="dropdown-item" href="../student/student_register.jsp">Add Students</a></li>
            <li><a class="dropdown-item" href="../student/view_all_student.jsp">View Students</a></li>
           
        </ul>
    </li>

</ul>
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false"><%=principal.getName()%></button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="../principal_Logout">Logout</a></li>
				</ul>
			</div>
			<%} %>

		</div>
	</div>
</nav>