package columbarium.business.impl;

import columbarium.business.ItemBusiness;
import columbarium.dao.ItemRepository;
import columbarium.model.Item;

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

	@Override
	public String update(Item item) {
		// TODO Auto-generated method stub
		if (item.getStrItemName().length() == 0 || item.getStrItemName() == null){
			item.setStrItemName(null);
		}
		if (item.getStrItemDesc().length() == 0 || item.getStrItemDesc() == null){
			item.setStrItemDesc(null);
		}
		return itemRepository.updateItem(item);
	}

}
