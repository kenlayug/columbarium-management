package columbarium.actions.item;

import java.util.List;

import com.opensymphony.xwork2.Action;

import columbarium.model.Item;

public class GetItemListAction implements Action{

	private List<Item> itemList;
	
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
		
		return "success";
	}

}
