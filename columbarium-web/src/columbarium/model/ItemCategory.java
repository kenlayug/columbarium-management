package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.ItemService;

public class ItemCategory {

	private int itemCategoryId;
	private String strItemCategoryDesc;
	
	public void setItemCategoryId(int itemCategoryId){
		this.itemCategoryId = itemCategoryId;
	}
	
	public int getItemCategoryId(){
		return this.itemCategoryId;
	}

	public String getStrItemCategoryDesc() {
		return strItemCategoryDesc;
	}

	public void setStrItemCategoryDesc(String strItemCategoryDesc) {
		this.strItemCategoryDesc = strItemCategoryDesc;
	}
	
	public String create(){
		ItemService itemItem = (ItemService)ServletActionContext.getServletContext()
				.getAttribute("itemService");
		return itemItem.createItemCategory(this);
	}
	
	public static List<ItemCategory> getAllItemCategory(){
		ItemService itemItem = (ItemService)ServletActionContext.getServletContext()
				.getAttribute("itemService");
		return itemItem.getAllItemCategory();
	}
	
}
