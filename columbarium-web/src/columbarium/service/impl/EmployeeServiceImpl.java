package columbarium.service.impl;

import columbarium.dao.EmployeeRepository;
import columbarium.model.Employee;
import columbarium.service.EmployeeService;

public class EmployeeServiceImpl implements EmployeeService{

	private EmployeeRepository employeeRepository;
	
	public void setEmployeeRepository(EmployeeRepository employeeRepository){
		this.employeeRepository = employeeRepository;
	}
	
	@Override
	public String saveEmployee(Employee employee) {
		// TODO Auto-generated method stub
		return employeeRepository.saveEmployee(employee);
	}

	@Override
	public Employee searchEmployee(Employee employee) {
		// TODO Auto-generated method stub
		return employeeRepository.searchEmployee(employee);
	}

}
