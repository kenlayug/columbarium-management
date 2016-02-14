package columbarium.dao.mybatis;

import java.util.List;

import columbarium.model.Item;
import junit.framework.Test;
import junit.framework.TestCase;
import junit.framework.TestSuite;

public class MybatisItemRepositoryTest extends TestCase{

	public MybatisItemRepositoryTest(String testName){
		super(testName);
	}
	
	public void testCreateItem(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisItemRepository itemRepository =
				new MybatisItemRepository(connectionManager);
		
		Item item = new Item();
		item.setStrItemName("Metalic Urn");
		item.setStrItemDesc("Iron-Man.");
		item.setDblPrice(100.00);
		
		assertEquals("success", itemRepository.createItem(item));
		
	}
	
	public void testGetItem(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisItemRepository itemRepository =
				new MybatisItemRepository(connectionManager);
		
		Item item = new Item();
		item.setItemId(1);
		item.setStrItemName("Cremation");
		
		assertNotNull(itemRepository.searchItem(item));

		
	}
	
	public void testUpdateItem(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisItemRepository itemRepository =
				new MybatisItemRepository(connectionManager);
		
		Item item = new Item();
		item.setItemId(1);
		item.setStrItemDesc("Shield ni Capt.");
		item.setStrItemName("Rounded Urn");
		item.setDblPrice(200.50);
		
		assertEquals("success",itemRepository.updateItem(item));
		
	}
	
	public void testGetAllItem(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisItemRepository itemRepository =
				new MybatisItemRepository(connectionManager);
		
		assertNotNull(itemRepository.getAllItem());
		
	}
	
	public void testDeactivateItem(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisItemRepository itemRepository =
				new MybatisItemRepository(connectionManager);
		
		Item item = new Item();
		item.setItemId(1);
		
		assertEquals("success", itemRepository.deactivateItem(item));
		
	}
	
	public void testSearchItemByName(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisItemRepository itemRepository =
				new MybatisItemRepository(connectionManager);
		
		Item item = new Item();
		item.setStrItemName("Urn");
		
		List<Item> itemResult = itemRepository.searchItemByName(item);
		for (Item item2 : itemResult) {
			System.out.println(item2);
		}
		assertNotNull(itemResult);
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		
		suite.addTest(new MybatisItemRepositoryTest("testCreateItem"));
		suite.addTest(new MybatisItemRepositoryTest("testGetItem"));
		suite.addTest(new MybatisItemRepositoryTest("testUpdateItem"));
		suite.addTest(new MybatisItemRepositoryTest("testGetAllItem"));
//		suite.addTest(new MybatisItemRepositoryTest("testDeactivateItem"));
		suite.addTest(new MybatisItemRepositoryTest("testSearchItemByName"));
		
		return suite;
		
	}
	
}
