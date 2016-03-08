package columbarium.dao;

import java.util.List;

import columbarium.model.Item;
import columbarium.model.ItemCategory;

public interface ItemRepository {

	public String createItem(Item item);
	public Item searchItem(Item item);
	public String updateItem(Item item);
	public String deactivateItem(Item item);
	
	public String createItemCategory(ItemCategory itemCategory);
	public List<ItemCategory> getAllItemCategory();
	
	public List<Item>getAllItem();
	public List<Item>searchItemByName(Item item);
	
	public int getLastItemId();
	
	public int countItem();
	
}
