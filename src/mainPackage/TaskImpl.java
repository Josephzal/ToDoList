package mainPackage;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class TaskImpl {
	
	// These methods access the HibernateUtil class to open the session
	// and perform respective tasks
	
	public void saveTask(Task task) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.save(task);
		transaction.commit();
		session.close();
	}
	
	public List<Task> displayTasks() {
		List<Task> taskList = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		Query query = session.createQuery("From Task");
		taskList = query.list();
		return taskList;
	}
	
	public void deleteTask(Task task) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		session.delete(task);
		transaction.commit();
		session.close();
	}

}
