package columbarium.dao.mybatis;

import columbarium.model.Block;
import columbarium.model.Floor;
import columbarium.model.Unit;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class MybatisBlockRepositoryTest extends TestCase{

	public MybatisBlockRepositoryTest(String testName){
		super(testName);
	}
	
	public void testCreateBlock(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisBlockRepository blockRepository = 
				new MybatisBlockRepository(connectionManager);
		
		Block block = new Block();
		block.setFloorId(3);
		block.setStrBlockName("Block B");
		block.setStrUnitType("Full Body Crpyts");
		block.setIntLevelNo(5);
		block.setIntColumnNo(5);
		
		assertEquals("success", blockRepository.createBlock(block));
		
	}
	
	public void testGetBlock(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisBlockRepository blockRepository = 
				new MybatisBlockRepository(connectionManager);
		
		Block block = new Block();
		block.setStrBlockName("Block B");
		block = blockRepository.getBlock(block);
		
		for (Unit unit : block.getUnitList()) {
			System.out.println(unit.getUnitId()+" -- Level "+unit.getIntLevelNo()+
					" Column "+unit.getIntColumnNo());
		}
		
		assertNotNull(block);
		
	}
	
	public void testUpdateBlock(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisBlockRepository blockRepository = 
				new MybatisBlockRepository(connectionManager);
		
		Block block = new Block();
		block.setBlockId(12);
		block.setStrBlockName("Block blockan");
		
		assertEquals("success", blockRepository.updateBlock(block));
		
	}
	
	public void testGetAllBlocksFromFloor(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisBlockRepository blockRepository = 
				new MybatisBlockRepository(connectionManager);
		
		Floor floor = new Floor(1, 2);
		floor.setBlockList(blockRepository.getAllBlocksFromFloor(floor));
		
		for (Block block : floor.getBlockList()) {
			System.out.println("Floor "+floor.getIntFloorNo()+" -- "+block.getStrBlockName());
		}
		
		assertNotNull(floor.getBlockList());
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		
		suite.addTest(new MybatisBlockRepositoryTest("testCreateBlock"));
		suite.addTest(new MybatisBlockRepositoryTest("testGetBlock"));
//		suite.addTest(new MybatisBlockRepositoryTest("testGetAllBlocksFromFloor"));
//		suite.addTest(new MybatisBlockRepositoryTest("testUpdateBlock"));
		
		return suite;
		
	}
	
}
