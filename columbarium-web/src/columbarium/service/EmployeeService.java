package columbarium.service;

import columbarium.model.Employee;

public interface EmployeeService {

	public String saveEmployee(Employee employee);
	public Employee searchEmployee(Employee employee);
	
}
