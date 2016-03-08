package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Item;
import columbarium.model.ItemCategory;

public interface ItemMapper {

	public void saveItem(Item item);
	public Item getItem(Item item);
	public void updateItem(Item item);
	public void deactivateItem(Item item);
	
	public void saveItemCategory(ItemCategory itemCategory);
	public List<ItemCategory> getAllItemCategory();
	public Integer checkIfExistingItemCategory(ItemCategory itemCategory);
	
	public Integer checkIfExisting(Item item);
	public Integer checkIfExistingById(Item item);
	
	public List<Item>getAllItem();
	public int countAllItem();
	public List<Item>searchItemList(Item item);
	
	public int getLastItemId();
	
}
