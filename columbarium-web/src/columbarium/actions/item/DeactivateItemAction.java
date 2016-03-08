package columbarium.actions.item;

import com.opensymphony.xwork2.Action;

import columbarium.model.Item;

public class DeactivateItemAction implements Action{

	private String strItemName;
	private String strStatus;
	private int itemId;
	
	public void setItemId(int itemId){
		this.itemId = itemId;
	}
	
	public String getStatus(){
		return strStatus;
	}
	
	public void setStrItemName(String strItemName){
		this.strItemName = strItemName;
	}
	public String getStrItemName(){
		return strItemName;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Item item = new Item();
		item.setItemId(itemId);
		strStatus = item.delete();
		return "success";
	}

}
