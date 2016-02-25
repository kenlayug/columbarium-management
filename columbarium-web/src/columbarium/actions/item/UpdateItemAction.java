package columbarium.actions.item;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Item;

public class UpdateItemAction extends ActionSupport implements Action{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Item item;
	private String strItemName;
	private String status;
	
	public String getStatus(){
		return status;
	}
	
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
		status =  getItem().update();
		return "success";
	}

}
