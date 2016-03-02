package columbarium.dao.mybatis;

import columbarium.model.Floor;
import columbarium.model.FloorType;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class MybatisFloorRepositoryTest extends TestCase{

	public MybatisFloorRepositoryTest(String testName){
		super(testName);
	}
	
	public void testConfigureFloor(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisFloorRepository floorRepository = new MybatisFloorRepository(connectionManager);
		
		Floor floor = new Floor(3, 2);
		FloorType floorType = new FloorType();
		floorType.setStrFloorDesc("Columbary Vaults");
//		floorType.setBoolIsUnit(true);
//		floorRepository.createFloorType(floorType);
		
		floor.setFloorType(floorType);
		floor.setIntColumnNo(5);
		floor.setIntLevelNo(5);
		
		assertEquals("success", floorRepository.configureFloor(floor));
		
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		
		suite.addTest(new MybatisFloorRepositoryTest("testConfigureFloor"));
		
		return suite;
		
	}
	
}
