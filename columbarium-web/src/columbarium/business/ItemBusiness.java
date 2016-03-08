package columbarium.business;

import columbarium.model.Item;
import columbarium.model.ItemCategory;

public interface ItemBusiness {

	public int getUpdatedItemId();
	public String update(Item item);
	public String createItem(Item item);
	
	public String createItemCategory(ItemCategory itemCategory);
	
}
