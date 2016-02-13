package columbarium.model;

import org.apache.struts2.ServletActionContext;

import columbarium.service.EmployeeService;

public class Employee extends Person{

	private Integer employeeId;
	private String strPassword;
	private Position position;
	
	public Employee(){
		
	}
	
	public Employee(String username, String password){
		this.employeeId = Integer.parseInt(username);
		this.strPassword = password;
	}
	
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
		String strStatus =  employeeService.saveEmployee(this);
		setStrPassword(null);
		return strStatus;
		
	}
	
	public void fetch(){
		EmployeeService employeeService = (EmployeeService)ServletActionContext.getServletContext()
				.getAttribute("employeeService");
		Employee employee =  employeeService.searchEmployee(this);
		setEmployeeId(employee.getEmployeeId());
		setName(employee.getName());
		setBirthday(employee.getBirthday());
		setPosition(employee.getPosition());
		setStrCivilStatus(employee.getStrCivilStatus());
		setStrGender(employee.getStrGender());
	}
	
	public String update(){
		
		EmployeeService employeeService = (EmployeeService)ServletActionContext.getServletContext()
				.getAttribute("employeeService");
		String strStatus = employeeService.updateEmployee(this);
		setStrPassword(null);
		return strStatus;
		
	}
	
	public String delete(){
		EmployeeService employeeService = (EmployeeService)ServletActionContext.getServletContext()
				.getAttribute("employeeService");
		return employeeService.deactivateEmployee(this);
	}
	
	public static String login(String strUsername, String strPassword){
		EmployeeService employeeService = (EmployeeService)ServletActionContext.getServletContext()
				.getAttribute("employeeService");
		String strStatus = employeeService.loginEmployee(strUsername, strPassword);
		return strStatus;
	}
	
	public static int getNewEmployeeCode(){
		EmployeeService employeeService = (EmployeeService)ServletActionContext.getServletContext()
				.getAttribute("employeeService");
		return employeeService.getNewEmployeeId();
	}
	
	public static Employee getEmployee(String employeeId){
		EmployeeService employeeService = (EmployeeService)ServletActionContext.getServletContext()
				.getAttribute("employeeService");
		Employee employee = new Employee();
		employee.setEmployeeId(Integer.parseInt(employeeId));
		return employeeService.searchEmployee(employee);
	}
	
}
