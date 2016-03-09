package columbarium.actions.item;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.ItemCategory;

public class CreateItemCategoryAction extends ActionSupport implements Action{

	private ItemCategory itemCategory;
	private String strStatus;
	
	public String getStatus(){
		return strStatus;
	}

	public ItemCategory getItemCategory() {
		return itemCategory;
	}

	public void setItemCategory(ItemCategory itemCategory) {
		this.itemCategory = itemCategory;
	}
	
	public String execute(){
		strStatus = itemCategory.create();
		return "success";
	}
	
}
