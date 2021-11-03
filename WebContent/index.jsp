<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
<title>ToDoIt</title>
</head>

<body>
	<div class="container-fluid">
		<div class="row align-items-center justify-content-center">
			<div class="col-lg-4"></div>
		 		<div class="col-lg-4">
		  			<div class="d-flex flex-column min-vh-100 justify-content-center align-items-center">
					<h1 class="justify-content-center">Welcome to ToDoIt</h1>
						<div class="btn-group pt-4">
							<input type="button" class="btn btn-primary" value="Add Task" onclick="window.location='addTasks.jsp'">
							<input type="button" class="btn btn-primary" value="Delete Task" onclick="window.location='deleteTasks.jsp'">
							<input type="button" class="btn btn-primary" value="View Tasks" onclick="window.location='showTasks.jsp'">
						</div>
					</div>
				</div>
			 <div class="col-lg-4"></div>
		</div>
	</div>
</body>

</html>