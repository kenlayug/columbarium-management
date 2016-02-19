package columbarium.dao.mybatis;

import columbarium.model.Building;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class MybatisBuildingRepositoryTest extends TestCase{

	public MybatisBuildingRepositoryTest(String testName){
		super(testName);
	}
	
	public void testCreateBuilding(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisBuildingRepository buildingRepository = 
				new MybatisBuildingRepository(connectionManager);
		
		Building building = new Building();
		building.setStrBuildingName("Ken Building");
		building.setStrBuildingLocation("Sta. Mesa, Manila");
		building.setStrBuildingType("Columbary Vaults");
		
		assertEquals("success", buildingRepository.createBuilding(building));
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		
		suite.addTest(new MybatisBuildingRepositoryTest("testCreateBuilding"));
		
		return suite;
		
	}
	
}
