package columbarium.dao.mybatis;

import java.io.BufferedReader;
import java.io.InputStreamReader;

import columbarium.model.Floor;
import columbarium.model.FloorType;
import columbarium.model.UnitCategory;
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
	
	public void testGetAllUnitCategoryFromFloor(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisFloorRepository floorRepository = new MybatisFloorRepository(connectionManager);
		
		Floor floor = new Floor(3,2);
		
		for (UnitCategory unitCategory : floorRepository.getAllUnitCategoryFromFloor(floor)) {
			System.out.println(unitCategory);
		}
		assertNotNull(floorRepository.getAllUnitCategoryFromFloor(floor));
		
	}
	
	public void testConfigureUnitCategoryPrice() throws Exception{
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		
		MybatisFloorRepository floorRepository = new MybatisFloorRepository(connectionManager);
		
		Floor floor = new Floor(3,2);
		floor.setUnitCategoryList(floorRepository.getAllUnitCategoryFromFloor(floor));
		for (UnitCategory unitCategory : floor.getUnitCategoryList()) {
			System.out.print("Price: ");
			unitCategory.setDblPrice(Double.parseDouble(br.readLine()));
		}
		
		assertEquals("success", floorRepository.configureUnitCategoryPrice(floor.getUnitCategoryList()));
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		
		suite.addTest(new MybatisFloorRepositoryTest("testConfigureFloor"));
		suite.addTest(new MybatisFloorRepositoryTest("testGetAllUnitCategoryFromFloor"));
//		suite.addTest(new MybatisFloorRepositoryTest("testConfigureUnitCategoryPrice"));
		
		return suite;
		
	}
	
}
