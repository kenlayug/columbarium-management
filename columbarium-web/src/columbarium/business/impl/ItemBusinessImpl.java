package columbarium.business.impl;

import columbarium.business.ItemBusiness;
import columbarium.dao.ItemRepository;
import columbarium.model.Item;
import columbarium.model.ItemCategory;

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

	@Override
	public String createItem(Item item) {

		if (item.getStrItemName().length() == 0 ||
				item.getStrItemName() == null ||
				item.getStrItemDesc().trim().equals(" ")){
			return "input";
		}
		if (Double.parseDouble(item.getDblPrice()) == 0){
			return "input";
		}
		if (item.getItemCategory().getStrItemCategoryDesc().length() == 0 ||
				item.getItemCategory().getStrItemCategoryDesc() == null ||
				item.getItemCategory().getStrItemCategoryDesc() == " "){
			return "input";
		}
		return itemRepository.createItem(item);
	}

	@Override
	public String createItemCategory(ItemCategory itemCategory) {
		if (itemCategory.getStrItemCategoryDesc() == null ||
				itemCategory.getStrItemCategoryDesc().length() == 0 ||
				itemCategory.getStrItemCategoryDesc().trim().equals(" ")){
			return "input";
		}
		return itemRepository.createItemCategory(itemCategory);
	}

}
