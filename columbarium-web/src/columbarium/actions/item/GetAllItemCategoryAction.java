package columbarium.actions.item;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.ItemCategory;

public class GetAllItemCategoryAction extends ActionSupport implements Action{

	private List<ItemCategory> itemCategoryList;
	
	public List<ItemCategory> getItemCategoryList(){
		return itemCategoryList;
	}
	
	public String execute(){
		itemCategoryList = ItemCategory.getAllItemCategory();
		return "success";
	}
	
}
