package columbarium.dao.mybatis;

import java.util.Date;
import java.util.List;

import columbarium.dao.ConnectionManager;
import columbarium.model.Employee;
import columbarium.model.Name;
import columbarium.model.Position;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class MybatisEmployeeRepositoryTest extends TestCase{

	public MybatisEmployeeRepositoryTest(String testName){
		super(testName);
	}
	
	public void testSaveEmployee(){
		
		ConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		MybatisEmployeeRepository mybatisEmployeeRepository = 
				new MybatisEmployeeRepository((MybatisConnectionManager)connectionManager);
		
		Employee employee = new Employee();
		employee.setName(new Name("Ken", "Malit", "Layug"));
		employee.setBirthday(new Date());
		employee.setStrCivilStatus("Single");
		employee.setStrGender("Male");
		employee.setStrPassword("kenpogi");
		Position position = new Position();
		position.setStrPositionDesc("Manager");
		employee.setPosition(position);
		
		assertEquals("success", mybatisEmployeeRepository.saveEmployee(employee));
		
	}
	
	public void testSearchEmployee(){
		
		ConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		MybatisEmployeeRepository mybatisEmployeeRepository = 
				new MybatisEmployeeRepository((MybatisConnectionManager)connectionManager);
		
		Employee employee = new Employee();
		employee.setEmployeeId(2);
		employee.setName(new Name("Ken", "Malit", "Layug"));
		assertNotNull(mybatisEmployeeRepository.searchEmployee(employee));
		
	}
	
	public void testDeactivateEmployee(){
		
		ConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		MybatisEmployeeRepository mybatisEmployeeRepository = 
				new MybatisEmployeeRepository((MybatisConnectionManager)connectionManager);
		
		Employee employee = new Employee();
		employee.setName(new Name("Ken", "Malit", "Layug"));
		employee = mybatisEmployeeRepository.searchEmployee(employee);
		assertNotNull(employee);
		assertEquals("success", mybatisEmployeeRepository.deactivateEmployee(employee));
		
	}
	
	public void testUpdateEmployee(){
		
		ConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		MybatisEmployeeRepository mybatisEmployeeRepository = 
				new MybatisEmployeeRepository((MybatisConnectionManager)connectionManager);
		
		Employee employee = new Employee();
		employee.setEmployeeId(1);
		employee.setName(new Name());
		employee.getName().setStrFirstName("Ken");
		assertEquals("success", mybatisEmployeeRepository.updateEmployee(employee));
		
	}
	
	public void testGetAllEmployee(){
		
		ConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		MybatisEmployeeRepository mybatisEmployeeRepository = 
				new MybatisEmployeeRepository((MybatisConnectionManager)connectionManager);
		List<Employee> employeeList = mybatisEmployeeRepository.getAllEmployee();
		assertNotNull(employeeList);
		for (Employee employee : employeeList) {
			System.out.println(employee);
		}
		
	}
	
	public void testLoginEmployee(){
	
		ConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		MybatisEmployeeRepository mybatisEmployeeRepository = 
				new MybatisEmployeeRepository((MybatisConnectionManager)connectionManager);
		assertEquals("success", mybatisEmployeeRepository.loginEmployee("1", "kenpogi"));
		
	}
	
	public static Test suite(){
		TestSuite suite = new TestSuite();
		suite.addTest(new MybatisEmployeeRepositoryTest("testSaveEmployee"));
		suite.addTest(new MybatisEmployeeRepositoryTest("testSearchEmployee"));
//		suite.addTest(new MybatisEmployeeRepositoryTest("testDeactivateEmployee"));
		suite.addTest(new MybatisEmployeeRepositoryTest("testUpdateEmployee"));
		suite.addTest(new MybatisEmployeeRepositoryTest("testGetAllEmployee"));
		suite.addTest(new MybatisEmployeeRepositoryTest("testLoginEmployee"));
		return suite;
	}
	
}
