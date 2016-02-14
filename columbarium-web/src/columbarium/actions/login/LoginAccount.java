package columbarium.actions.login;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;

import columbarium.model.Employee;

public class LoginAccount implements Action, SessionAware{

	private String employeeId;
	private String strPassword;
	private Employee employee;
	private Map<String,Object> sessionMap;
	
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public String getStrPassword() {
		return strPassword;
	}

	public void setStrPassword(String strPassword) {
		this.strPassword = strPassword;
	}

	@Override
	public void setSession(Map<String, Object> sessionMap) {
		// TODO Auto-generated method stub
		this.sessionMap = sessionMap;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		String strStatus = Employee.login(getEmployeeId(), getStrPassword());
		if (strStatus.equals("success")){
			sessionMap.put("employeeId", getEmployeeId());
			setEmployee(Employee.getEmployee((String)sessionMap.get("employeeId")));
		}
		return strStatus;
	}
	
	public void validate(){
		
	}

}
