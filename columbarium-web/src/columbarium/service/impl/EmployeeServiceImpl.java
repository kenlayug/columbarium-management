package columbarium.service.impl;

import java.util.List;

import columbarium.business.EmployeeBusiness;
import columbarium.dao.EmployeeRepository;
import columbarium.model.Employee;
import columbarium.model.Position;
import columbarium.service.EmployeeService;

public class EmployeeServiceImpl implements EmployeeService{

	private EmployeeRepository employeeRepository;
	private EmployeeBusiness employeeBusiness;
	
	public void setEmployeeBusiness(EmployeeBusiness employeeBusiness){
		this.employeeBusiness = employeeBusiness;
	}
	
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

	@Override
	public String deactivateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		return employeeRepository.deactivateEmployee(employee);
	}

	@Override
	public String updateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		return employeeRepository.updateEmployee(employee);
	}

	@Override
	public List<Employee> getAllEmployee() {
		// TODO Auto-generated method stub
		return employeeRepository.getAllEmployee();
	}

	@Override
	public String loginEmployee(String username, String password) {
		// TODO Auto-generated method stub
		return employeeRepository.loginEmployee(username, password);
	}

	@Override
	public List<Position> getAllPosition() {
		// TODO Auto-generated method stub
		return employeeRepository.getAllPosition();
	}

	@Override
	public int getNewEmployeeId() {
		// TODO Auto-generated method stub
		return employeeBusiness.getUpdatedEmployeeId();
	}

}
