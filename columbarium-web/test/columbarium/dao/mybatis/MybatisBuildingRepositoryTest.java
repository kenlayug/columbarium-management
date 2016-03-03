package columbarium.dao.mybatis;

import columbarium.model.Building;
import columbarium.model.Floor;
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
		building.setStrBuildingName("Sino Building");
		building.setStrBuildingLocation("Sta. Mesa, Manila");
		building.setIntNoOfFloors(5);
		
		assertEquals("success", buildingRepository.createBuilding(building));
		
	}
	
	public void testGetAllBuilding(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisBuildingRepository buildingRepository = 
				new MybatisBuildingRepository(connectionManager);
		
		for (Building building : buildingRepository.getAllBuilding()) {
			System.out.println(building.getStrBuildingName());
			for (Floor floor : building.getFloorList()) {
				System.out.println(floor.getIntFloorNo());
				System.out.println(floor.getFloorType());
			}
		}
		
		assertNotNull(buildingRepository.getAllBuilding());
		
	}
	
	public void testGetBuilding(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisBuildingRepository buildingRepository = 
				new MybatisBuildingRepository(connectionManager);
		
		Building building = new Building();
		building.setStrBuildingName("Sino Building");
		
		Building building2 = new Building();
		building2.setStrBuildingName("Sino Building");
		
		building = buildingRepository.getBuilding(building);
		for (Floor floor : building.getFloorList()) {
			System.out.println(floor.getIntFloorNo());
			System.out.println(floor.getFloorType());
		}
		assertNotNull(buildingRepository.getBuilding(building2));
		
	}
	
	public void testUpdateBuilding(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisBuildingRepository buildingRepository = 
				new MybatisBuildingRepository(connectionManager);
		
		Building building = new Building();
		building.setStrBuildingName("Ken Building");
		building = buildingRepository.getBuilding(building);
		
		building.setStrBuildingName("Ken Layug Building");
		assertEquals("success", buildingRepository.updateBuilding(building));
		
	}
	
	public void testDeactivateBuilding(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisBuildingRepository buildingRepository = 
				new MybatisBuildingRepository(connectionManager);
		
		Building building = new Building();
		building.setStrBuildingName("Sino Building");
		
		building = buildingRepository.getBuilding(building);
		
		assertEquals("success", buildingRepository.deactivateBuilding(building));
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		
		suite.addTest(new MybatisBuildingRepositoryTest("testCreateBuilding"));
		suite.addTest(new MybatisBuildingRepositoryTest("testGetAllBuilding"));
		suite.addTest(new MybatisBuildingRepositoryTest("testGetBuilding"));
//		suite.addTest(new MybatisBuildingRepositoryTest("testUpdateBuilding"));
//		suite.addTest(new MybatisBuildingRepositoryTest("testDeactivateBuilding"));
		
		return suite;
		
	}
	
}
