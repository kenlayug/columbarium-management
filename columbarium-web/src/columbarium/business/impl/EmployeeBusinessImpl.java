package columbarium.business.impl;

import columbarium.business.EmployeeBusiness;
import columbarium.dao.EmployeeRepository;

public class EmployeeBusinessImpl implements EmployeeBusiness{

	private EmployeeRepository employeeRepository;
	
	public void setEmployeeRepository(EmployeeRepository employeeRepository){
		this.employeeRepository = employeeRepository;
	}

	@Override
	public int getUpdatedEmployeeId() {
		// TODO Auto-generated method stub
		return employeeRepository.getLastEmployeeId() + 1;
	}

}
