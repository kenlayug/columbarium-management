package columbarium.service;

import java.util.List;

import columbarium.model.Employee;
import columbarium.model.Position;

public interface EmployeeService {

	public String saveEmployee(Employee employee);
	public Employee searchEmployee(Employee employee);
	public String deactivateEmployee(Employee employee);
	public String updateEmployee(Employee employee);
	
	public List<Employee>getAllEmployee();
	
	public String loginEmployee(String username, String password);
	
	public List<Position> getAllPosition();
	
	public int getNewEmployeeId();
	
}
