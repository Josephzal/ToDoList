package mainPackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TaskController")
public class TaskController extends HttpServlet {
		/**
	 * 
	 */
	
		Task task = new Task();
		TaskImpl taskImpl = new TaskImpl();
		
		@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			// If the request is to addTask, get taskText and create new task with it
			// then save the task with the taskImpl class and return to main page
			if(request.getParameter("addTask")!=null) {
				String taskDescription = request.getParameter("taskText");
				task.setTaskDescription(taskDescription);
				taskImpl.saveTask(task);
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request,  response);
						
			}
		}
		
		@Override
		protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			
//			if(request.getParameter("addTask")!=null) {
//				String taskDescription = request.getParameter("taskText");
//				System.out.println(taskDescription);
//				ToDoList.addTask(taskDescription);
//				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
//				rd.forward(request,  response);
//			}
			
			// If the request is to displayTasks, create a list of tasks with the 
			// and display tasks
			if(request.getParameter("displayTasks")!=null) {
				List<Task> listTodo = taskImpl.displayTasks();
				request.setAttribute("listTodo", listTodo);
				RequestDispatcher dispatcher = request.getRequestDispatcher("todo/todo-list.jsp");
				dispatcher.forward(request, response);
			}
			
			// If the request is to deleteTask, get taskID and delete task with it
			// then return to main page
			if(request.getParameter("deleteTask")!=null) {
				int id = Integer.parseInt(request.getParameter("taskID"));
				task.setId(id);
				taskImpl.deleteTask(task);
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
		}
}