<%@page import="com.org.dto.School"%>

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
			<a class="nav-link active" aria-current="page"
				href="../school/view_admin.jsp"><i class="fa-solid fa-user"></i>Profile</a>

			<!-- a class="nav-link active" aria-current="page" href="javascript:void(0);" onclick="confirmDelete()"><button class="btn btn-danger"
					onclick="confirmDelete()">Delete</button> 
				<script>
					function confirmDelete() {
						var id='<%=((School) session.getAttribute("success")).getId()%>';
						 if (confirm("Are you sure  to delete your account?")) {
						      window.location.href = "../delete_school?id="+id;
						 }
					}
				</script></a-->


			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item dropdown"><a
					class="nav-link active dropdown-toggle" href="#"
					id="navbarDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"><i class="fa-solid fa-user-tie"></i>Principal</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item"
							href="../principal/principal_register.jsp">Add Principal</a> <a
							class="dropdown-item"
							href="../principal/view_principal_school.jsp">View Principal</a>


					</div></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="../teacher/view_all_teacher_school.jsp"><i
						class="fa-solid fa-user"></i>view Teachers</a></li>

				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="../student/view_all_student_school.jsp"><i
						class="fa-solid fa-user"></i>view Students</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#"></a></li>

			</ul>
			<div class="dropdown">
				<button class="btn btn-secondary dropdown-toggle" type="button"
					id="dropdownMenuButton1" data-bs-toggle="dropdown"
					aria-expanded="false"><%=((School) session.getAttribute("success")).getName()%></button>
				<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					<li><a class="dropdown-item" href="../admin_Logout">Logout</a></li>
				</ul>
			</div>

		</div>
	</div>
</nav>