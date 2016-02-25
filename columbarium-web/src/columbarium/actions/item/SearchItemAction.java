package columbarium.actions.item;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Item;

public class SearchItemAction extends ActionSupport implements Action{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Item item;
	private String strItemName;
	
	public void setStrItemName(String strItemName){
		this.strItemName = strItemName;
	}
	
	public String getStrItemName(){
		return strItemName;
	}
	
	public void setItem(Item item){
		this.item = item;
	}
	
	public Item getItem(){
		return item;
	}
	
	public String execute(){
		
		setItem(Item.searchItem(strItemName));
		return "success";
		
	}
	
}
