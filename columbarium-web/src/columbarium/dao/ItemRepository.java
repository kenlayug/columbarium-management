package columbarium.dao;

import java.util.List;

import columbarium.model.Item;

public interface ItemRepository {

	public String createItem(Item item);
	public Item searchItem(Item item);
	public String updateItem(Item item);
	public String deactivateItem(Item item);
	
	public List<Item>getAllItem();
	public List<Item>searchItemByName(Item item);
	
	public int getLastItemId();
	
}
