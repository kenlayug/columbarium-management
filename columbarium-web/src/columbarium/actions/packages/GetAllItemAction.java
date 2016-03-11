package columbarium.actions.packages;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Item;

public class GetAllItemAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private List<Item>itemList;
	
	public List<Item>getItemList(){
		return itemList;
	}
	
	public String execute(){
		
		itemList = Item.getAllItems();
		return "success";
		
	}
	
}
