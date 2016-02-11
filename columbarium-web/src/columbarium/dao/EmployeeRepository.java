package columbarium.dao;

import columbarium.model.Employee;

public interface EmployeeRepository {

	public String saveEmployee(Employee employee);
	public Employee searchEmployee(Employee employee);
	
}
