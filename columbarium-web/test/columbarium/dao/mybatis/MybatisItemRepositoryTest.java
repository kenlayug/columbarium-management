package columbarium.dao.mybatis;

import java.util.List;

import columbarium.model.Item;
import columbarium.model.ItemCategory;
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
		item.setStrItemName("O'hara");
		item.setStrItemDesc("O'hara");
		item.setDblPrice(100.00);
		ItemCategory itemCategory = new ItemCategory();
		itemCategory.setStrItemCategoryDesc("Urn");
		item.setItemCategory(itemCategory);
		
		assertEquals("success", itemRepository.createItem(item));
		
	}
	
	public void testGetItem(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisItemRepository itemRepository =
				new MybatisItemRepository(connectionManager);
		
		Item item = new Item();
//		item.setItemId(1);
		item.setStrItemName("Metalic Urn");
		
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
	
	public void testCreateItemCategory(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisItemRepository itemRepository =
				new MybatisItemRepository(connectionManager);
		
		ItemCategory itemCategory = new ItemCategory();
		itemCategory.setStrItemCategoryDesc("Urn");
		
		assertEquals("success", itemRepository.createItemCategory(itemCategory));
		
	}
	
	public void testGetAllItemCategory(){
		
		MybatisConnectionManager connectionManager = new MybatisConnectionManager();
		connectionManager.establishConnection();
		
		MybatisItemRepository itemRepository =
				new MybatisItemRepository(connectionManager);
		
		List<ItemCategory> itemCategoryList = itemRepository.getAllItemCategory();
		for (ItemCategory itemCategory : itemCategoryList) {
			System.out.println("Item Category -- "+itemCategory.getStrItemCategoryDesc());
		}
		assertNotNull(itemCategoryList);
		
	}
	
	public static Test suite(){
		
		TestSuite suite = new TestSuite();
		
		suite.addTest(new MybatisItemRepositoryTest("testCreateItem"));
//		suite.addTest(new MybatisItemRepositoryTest("testGetItem"));
//		suite.addTest(new MybatisItemRepositoryTest("testUpdateItem"));
		suite.addTest(new MybatisItemRepositoryTest("testGetAllItem"));
//		suite.addTest(new MybatisItemRepositoryTest("testDeactivateItem"));
//		suite.addTest(new MybatisItemRepositoryTest("testSearchItemByName"));
		suite.addTest(new MybatisItemRepositoryTest("testCreateItemCategory"));
		suite.addTest(new MybatisItemRepositoryTest("testGetAllItemCategory"));
		
		return suite;
		
	}
	
}
