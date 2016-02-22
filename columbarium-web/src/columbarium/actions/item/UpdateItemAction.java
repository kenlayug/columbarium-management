package columbarium.actions.item;

import java.util.List;

import com.opensymphony.xwork2.Action;

import columbarium.model.Item;

public class UpdateItemAction implements Action{

	private Item item;
	private String strItemName;
	
	public void setStrItemName(String strItemName){
		this.strItemName = strItemName;
	}
	
	public String getStrItemName(){
		return this.strItemName;
	}
	
	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Item item = Item.searchItem(getStrItemName());
		getItem().setItemId(item.getItemId());
		return getItem().update();
	}

}
