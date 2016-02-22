package columbarium.actions.item;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Item;

public class CreateItemAction extends ActionSupport implements Action{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
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
		return getItem().create();
	}
	
	public void validate(){
		
		if (item.getStrItemName().length() == 0 || item.getStrItemName() == null){

		}
		if (item.getStrItemDesc().length() == 0 || item.getStrItemDesc() == null){

		}
		if (Double.parseDouble(item.getDblPrice()) < 0 || item.getDblPrice() == null){

		}
		
	}

}
