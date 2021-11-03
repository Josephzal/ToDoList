package mainPackage;

// Task entity class

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Task  {
	@Id
	private int id;
	private String taskDescription;
	
	public Task() {
		
	}
	
	public Task(String desc) {
		this.taskDescription = desc;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTaskDescription() {
		return taskDescription;
	}

	public void setTaskDescription(String taskDescription) {
		this.taskDescription = taskDescription;
	}

	@Override
	public String toString() {
		return "Task [id=" + id + ", taskDescription=" + taskDescription + "]";
	}


}