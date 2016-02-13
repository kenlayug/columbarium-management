package columbarium.model;

import java.text.DecimalFormat;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.ItemService;

public class Item {

	private int itemId;
	private String strItemName;
	private String strItemDesc;
	private double dblPrice;
	
	public Item(){
		
	}
	
	public Item(String strItemName){
		this.strItemName = strItemName;
	}
	
	public int getItemId() {
		return itemId;
	}
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public String getStrItemName() {
		return strItemName;
	}
	public void setStrItemName(String strItemName) {
		this.strItemName = strItemName;
	}
	public String getStrItemDesc() {
		return strItemDesc;
	}
	public void setStrItemDesc(String strItemDesc) {
		this.strItemDesc = strItemDesc;
	}
	public String getDblPrice() {
		DecimalFormat deciFormat = new DecimalFormat("0.00");
		return deciFormat.format(dblPrice);
	}
	public void setDblPrice(double dblPrice) {
		this.dblPrice = dblPrice;
	}
	@Override
	public String toString(){
		return getStrItemName()+" -- "+getDblPrice();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + itemId;
		result = prime * result + ((strItemName == null) ? 0 : strItemName.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof Item)) {
			return false;
		}
		Item other = (Item) obj;
		if (itemId != other.itemId) {
			return false;
		}
		if (strItemName == null) {
			if (other.strItemName != null) {
				return false;
			}
		} else if (!strItemName.equals(other.strItemName)) {
			return false;
		}
		return true;
	}
	
	public String create(){
		ItemService itemItem = (ItemService)ServletActionContext.getServletContext()
				.getAttribute("itemItem");
		return itemItem.createItem(this);
	}
	
	public void fetch(){
		ItemService itemItem = (ItemService)ServletActionContext.getServletContext()
				.getAttribute("itemItem");
		Item item = itemItem.searchItem(this);
		setItemId(item.getItemId());
		setStrItemName(item.getStrItemName());
		setStrItemDesc(item.getStrItemDesc());
		setDblPrice(Double.parseDouble(item.getDblPrice()));
	}
	
	public String update(){
		ItemService itemItem = (ItemService)ServletActionContext.getServletContext()
				.getAttribute("itemItem");
		return itemItem.updateItem(this);
	}
	
	public String delete(){
		ItemService itemItem = (ItemService)ServletActionContext.getServletContext()
				.getAttribute("itemItem");
		return itemItem.deactivateItem(this);
	}
	
	public static List<Item>getAllItems(){
		ItemService itemItem = (ItemService)ServletActionContext.getServletContext()
				.getAttribute("itemItem");
		return itemItem.getAllItem();
	}
	
	public static int getNewItemId(){
		ItemService itemItem = (ItemService)ServletActionContext.getServletContext()
				.getAttribute("itemItem");
		return itemItem.getNewItemId();
	}
	
	public static List<Item>searchByName(String strItemName){
		Item item = new Item(strItemName);
		ItemService itemItem = (ItemService)ServletActionContext.getServletContext()
				.getAttribute("itemItem");
		return itemItem.searchItemByName(item);
	}
	
}
