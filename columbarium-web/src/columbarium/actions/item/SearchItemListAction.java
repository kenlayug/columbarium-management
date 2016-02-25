package columbarium.actions.item;

import java.util.List;

import com.opensymphony.xwork2.Action;

import columbarium.model.Item;

public class SearchItemListAction implements Action{

	private String strItemName;
	private List<Item> itemList;
	public String getStrItemName() {
		return strItemName;
	}
	public void setStrItemName(String strItemName) {
		this.strItemName = strItemName;
	}
	public List<Item> getItemList() {
		return itemList;
	}
	public void setItemList(List<Item> itemList) {
		this.itemList = itemList;
	}
	
	public String execute(){

		setItemList(Item.searchByName(strItemName));
		return "success";
	}
	
}
