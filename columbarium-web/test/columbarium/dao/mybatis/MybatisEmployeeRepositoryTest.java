package columbarium.dao.mybatis;

import java.util.Date;

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
		employee.setName(new Name("Ken", "Malit", "Layug"));
		System.out.println(employee.getName());
		System.out.println(mybatisEmployeeRepository.searchEmployee(employee));
		assertNotNull(mybatisEmployeeRepository.searchEmployee(employee));
		
	}
	
	public static Test suite(){
		TestSuite suite = new TestSuite();
		suite.addTest(new MybatisEmployeeRepositoryTest("testSearchEmployee"));
		return suite;
	}
	
}
