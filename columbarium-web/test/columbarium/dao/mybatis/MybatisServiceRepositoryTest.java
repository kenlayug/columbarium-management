package columbarium.dao.mybatis;

import java.util.List;

import columbarium.model.Requirement;
import columbarium.model.Service;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class MybatisServiceRepositoryTest extends TestCase{

	public MybatisServiceRepositoryTest(String testName){
		super(testName);
	}
	
	public void testCreateService(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisServiceRepository serviceRepository =
				new MybatisServiceRepository(connectionManager);
		
		Service service = new Service();
		service.setStrServiceName("Interment");
		service.setStrServiceDesc("Lagay patay sa loob.");
		service.setDblPrice(100.00);
		service.setAddRequirement("Ken Pogi");
		
		assertEquals("success", serviceRepository.createService(service));
		
	}
	
	public void testGetService(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisServiceRepository serviceRepository =
				new MybatisServiceRepository(connectionManager);
		
		Service service = new Service();
		service.setServiceId(13);
		service = serviceRepository.searchService(service);
		for (Requirement requirement : service.getRequirementList()) {
			System.out.println(requirement.getStrRequirementName());
		}
		assertNotNull(serviceRepository.searchService(service));

		
	}
	
	public void testUpdateService(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisServiceRepository serviceRepository =
				new MybatisServiceRepository(connectionManager);
		
		Service service = new Service();
		service.setServiceId(13);
		service.setStrServiceDesc("Ano ba yan?");
		service.setStrServiceName("Cremation");
		service.setDblPrice(200.50);
		service.setRequirementList(serviceRepository.searchService(service).getRequirementList());
		service.setAddRequirement("O'hara");
		
		assertEquals("success",serviceRepository.updateService(service));
		
	}
	
	public void testGetAllService(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisServiceRepository serviceRepository =
				new MybatisServiceRepository(connectionManager);
		
		for (Service service : serviceRepository.getAllService()) {
			System.out.println(service.getStrServiceName());
			for (Requirement requirement : service.getRequirementList()) {
				System.out.println(requirement.getStrRequirementName());
			}
		}
		
		assertNotNull(serviceRepository.getAllService());
		
	}
	
	public void testDeactivateService(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisServiceRepository serviceRepository =
				new MybatisServiceRepository(connectionManager);
		
		Service service = new Service();
		service.setServiceId(13);
		
		assertEquals("success", serviceRepository.deactivateService(service));
		
	}
	
	public void testSearchServiceByName(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisServiceRepository serviceRepository =
				new MybatisServiceRepository(connectionManager);
		
		Service service = new Service();
		service.setStrServiceName("cre");
		
		List<Service> serviceResult = serviceRepository.searchServiceByName(service);
		for (Service service2 : serviceResult) {
			System.out.println(service2);
		}
		assertNotNull(serviceResult);
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		
//		suite.addTest(new MybatisServiceRepositoryTest("testCreateService"));
//		suite.addTest(new MybatisServiceRepositoryTest("testGetService"));
//		suite.addTest(new MybatisServiceRepositoryTest("testUpdateService"));
		suite.addTest(new MybatisServiceRepositoryTest("testGetAllService"));
//		suite.addTest(new MybatisServiceRepositoryTest("testDeactivateService"));
//		suite.addTest(new MybatisServiceRepositoryTest("testSearchServiceByName"));
		
		return suite;
		
	}
	
}
