package columbarium.actions.item;

import java.util.List;

import com.opensymphony.xwork2.Action;

import columbarium.model.Item;
import columbarium.model.ItemCategory;

public class InitializeItemScreenAction implements Action{

	private List<Item> itemList;
	private List<ItemCategory> itemCategoryList;
	
	public List<ItemCategory> getItemCategoryList() {
		return itemCategoryList;
	}

	public void setItemCategoryList(List<ItemCategory> itemCategoryList) {
		this.itemCategoryList = itemCategoryList;
	}

	public void setItemList(List<Item> itemList){
		this.itemList = itemList;
	}
	
	public List<Item> getItemList(){
		return this.itemList;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if (Item.countItem() != 0){
			setItemList(Item.getAllItems());
		}
		itemCategoryList = ItemCategory.getAllItemCategory();
		
		return "success";
	}

}
