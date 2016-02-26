package columbarium.service.impl;

import java.util.List;

import columbarium.business.ItemBusiness;
import columbarium.dao.ItemRepository;
import columbarium.model.Item;
import columbarium.service.ItemService;

public class ItemServiceImpl implements ItemService{

	private ItemRepository itemRepository;
	private ItemBusiness itemBusiness;
	
	public void setItemBusiness(ItemBusiness itemBusiness){
		this.itemBusiness = itemBusiness;
	}
	
	public void setItemRepository(ItemRepository itemRepository){
		this.itemRepository = itemRepository;
	}
	
	@Override
	public String createItem(Item item) {
		// TODO Auto-generated method stub
		return itemBusiness.createItem(item);
	}

	@Override
	public Item searchItem(Item item) {
		// TODO Auto-generated method stub
		return itemRepository.searchItem(item);
	}

	@Override
	public String updateItem(Item item) {
		// TODO Auto-generated method stub
		return itemBusiness.update(item);
	}

	@Override
	public List<Item> getAllItem() {
		// TODO Auto-generated method stub
		return itemRepository.getAllItem();
	}

	@Override
	public String deactivateItem(Item item) {
		// TODO Auto-generated method stub
		return itemRepository.deactivateItem(item);
	}

	@Override
	public int getNewItemId() {
		// TODO Auto-generated method stub
		return itemBusiness.getUpdatedItemId();
	}

	@Override
	public List<Item> searchItemByName(Item item) {
		// TODO Auto-generated method stub
		return itemRepository.searchItemByName(item);
	}

	@Override
	public int countItem() {
		// TODO Auto-generated method stub
		return itemRepository.countItem();
	}

}
