package columbarium.business;

import columbarium.model.Item;

public interface ItemBusiness {

	public int getUpdatedItemId();
	public String update(Item item);
	public String createItem(Item item);
	
}
