package columbarium.dao.mybatis;

import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;
import columbarium.model.Item;
import columbarium.model.Package;
import columbarium.model.Service;

public class MybatisPackageRepositoryTest extends TestCase{

	public MybatisPackageRepositoryTest(String testName){
		super(testName);
	}
	
	public void testGetAllPackage(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisPackageRepository packageRepository =
				new MybatisPackageRepository(connectionManager);
		
		for (Package packageTo : packageRepository.getAllPackage()) {
			for (Service service : packageTo.getServiceList()) {
				System.out.println(service);
			}
			for (Item item : packageTo.getItemList()) {
				System.out.println(item);
			}
		}
		
		assertNotNull(packageRepository.getAllPackage());
		
	}
	
	public void testCreatePackage(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisPackageRepository packageRepository =
				new MybatisPackageRepository(connectionManager);
		
		Package packageTo = new Package();
		packageTo.setStrPackageName("Cremation with free urn");
		System.out.println(packageTo.getStrPackageName().length());
		packageTo.setStrPackageDesc("Bonus na to ah?");
		packageTo.setDblPrice(1500.00);
		Service service = new Service();
		service.setServiceId(1);
		service.setStrServiceName("Cremation");
		Item item = new Item();
		item.setStrItemName("Rounded Urn");
		packageTo.addServiceToPackage(service);
		packageTo.addItemToPackage(item);
		
		assertEquals("success", packageRepository.createPackage(packageTo));
		
	}
	
	public void testSearchPackage(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisPackageRepository packageRepository =
				new MybatisPackageRepository(connectionManager);
		
		Package packageTo = new Package();
		packageTo.setStrPackageName("Cremation with invisible urn");
		
		packageTo = packageRepository.searchPackage(packageTo);
		for (Service service : packageTo.getServiceList()) {
			System.out.println(service);
		}
		for (Item item : packageTo.getItemList()) {
			System.out.println(item);
		}
		assertNotNull(packageRepository.searchPackage(packageTo));
		
	}
	
	public void testUpdatePackage(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisPackageRepository packageRepository =
				new MybatisPackageRepository(connectionManager);
		
		Package packageTo = new Package();
		packageTo.setPackageId(4);
		packageTo.setStrPackageName("Cremation with invisible urn");
		
		assertEquals("success", packageRepository.updatePackage(packageTo));
		
	}
	
	public void testDeactivatePackage(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisPackageRepository packageRepository =
				new MybatisPackageRepository(connectionManager);
		
		Package packageTo = new Package();
		packageTo.setPackageId(4);
		packageTo.setStrPackageName("Cremation with invisible urn");
		
		assertEquals("success", packageRepository.deactivatePackage(packageTo));
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();

		suite.addTest(new MybatisPackageRepositoryTest("testCreatePackage"));
		suite.addTest(new MybatisPackageRepositoryTest("testGetAllPackage"));
		suite.addTest(new MybatisPackageRepositoryTest("testUpdatePackage"));
		suite.addTest(new MybatisPackageRepositoryTest("testSearchPackage"));
		suite.addTest(new MybatisPackageRepositoryTest("testDeactivatePackage"));
		
		return suite;
		
	}
	
}