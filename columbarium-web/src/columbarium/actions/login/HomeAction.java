package columbarium.actions.login;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.Action;

import columbarium.model.Employee;

public class HomeAction implements Action, SessionAware{

	private Map<String, Object>sessionMap;
	private Employee employee;
	
	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	@Override
	public void setSession(Map<String, Object> sessionMap) {
		// TODO Auto-generated method stub
		this.sessionMap = sessionMap;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		setEmployee(Employee.getEmployee((String)sessionMap.get("employeeId")));
		return "success";
	}

	
	
}
