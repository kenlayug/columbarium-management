package columbarium.model;

import org.apache.struts2.ServletActionContext;

import columbarium.service.EmployeeService;

public class Employee extends Person{

	private Integer employeeId;
	private String strPassword;
	private Position position;
	
	public Integer getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getStrPassword() {
		return strPassword;
	}
	public void setStrPassword(String strPassword) {
		this.strPassword = strPassword;
	}
	public Position getPosition() {
		return position;
	}
	public void setPosition(Position position) {
		this.position = position;
	}
	public String toString(){
		return getEmployeeId()+" -- "+getName();
	}
	
	public String save(){
		
		EmployeeService employeeService = (EmployeeService)ServletActionContext.getServletContext()
				.getAttribute("employeeService");
		return employeeService.saveEmployee(this);
	}
	
}
