package columbarium.model;

public class PackageItem {

	private int packageId;
	private Item item;
	
	public PackageItem(){
		
	}
	
	public PackageItem(int packageId, Item item){
		this.packageId = packageId;
		this.item = item;
	}
	
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public Item getItem() {
		return item;
	}
	public void setItem(Item item) {
		this.item = item;
	}
	
}
