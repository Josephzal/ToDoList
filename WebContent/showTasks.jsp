<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>View Tasks</title>
</head>
<body>

<!-- Access MySQL db -->
<sql:setDataSource
	var="myDS"
    driver="com.mysql.cj.jdbc.Driver"
    url="jdbc:mysql://localhost:3306/todolist"
    user="root" password="Sqlpassword" />

<!-- Perform SQL query to select all tasks -->
<sql:query var="listTasks" dataSource="${myDS}">
    SELECT * FROM Task;
</sql:query>

<!-- Loop through each task and display  -->


<div class="container-fluid">
		<div class="row align-items-center justify-content-center">
			<div class="col-lg-4"></div>
		  		<div class="col-lg-4">
		  			<div class="d-flex flex-column min-vh-100 justify-content-center align-items-center">
						
						<!--  Get Access to TaskController class -->
						<form action="TaskController" method="POST">
					    	<table class="table">
  								<thead>
   								 	<tr>
     							 	<th scope="col">ID</th>
      							 	<th scope="col">Task Description</th>
      
    								</tr>
								</thead>
  								<tbody>
  									<c:forEach var="Task" items="${listTasks.rows}">
    									<tr>
      									<td>${Task.id}</td>
      									<td>${Task.taskDescription}</td>
    									</tr>
									</c:forEach>

  								</tbody>
							</table>
						</form>
					</div>
				</div>
			<div class="col-lg-4"></div>
		</div>
	</div>
	
</body>
</html>