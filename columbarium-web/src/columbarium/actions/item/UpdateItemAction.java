package columbarium.actions.item;

import com.opensymphony.xwork2.Action;

import columbarium.model.Item;

public class UpdateItemAction implements Action{

	private Item item;
	
	public Item getItem() {
		return item;
	}

	public void setItem(Item item) {
		this.item = item;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
