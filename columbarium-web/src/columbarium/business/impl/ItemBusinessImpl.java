package columbarium.business.impl;

import columbarium.business.ItemBusiness;
import columbarium.dao.ItemRepository;

public class ItemBusinessImpl implements ItemBusiness{

	private ItemRepository itemRepository;
	
	public void setItemRepository(ItemRepository itemRepository){
		this.itemRepository = itemRepository;
	}
	
	@Override
	public int getUpdatedItemId() {
		// TODO Auto-generated method stub
		return itemRepository.getLastItemId() + 1;
	}

}
