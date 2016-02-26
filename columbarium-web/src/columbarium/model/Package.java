package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.PackageService;

public class Package {
	
	private int packageId;
	private String strPackageName;
	private String strPackageDesc;
	private List<Service>serviceList;
	private List<Item>itemList;
	private double dblPrice;
	public double getDblPrice() {
		return dblPrice;
	}
	public void setDblPrice(double dblPrice) {
		this.dblPrice = dblPrice;
	}
	public int getPackageId() {
		return packageId;
	}
	public void setPackageId(int packageId) {
		this.packageId = packageId;
	}
	public String getStrPackageName() {
		return strPackageName;
	}
	public void setStrPackageName(String strPackageName) {
		this.strPackageName = strPackageName;
	}
	public String getStrPackageDesc() {
		return strPackageDesc;
	}
	public void setStrPackageDesc(String strPackageDesc) {
		this.strPackageDesc = strPackageDesc;
	}
	public List<Service> getServiceList() {
		return serviceList;
	}
	public void setServiceList(List<Service> serviceList) {
		this.serviceList = serviceList;
	}
	public List<Item> getItemList() {
		return itemList;
	}
	public void setItemList(List<Item> itemList) {
		this.itemList = itemList;
	}
	public void addItemToPackage(String strItemName){
		Item item = Item.searchItem(strItemName);
		if(!itemList.contains(item)){
			this.itemList.add(item);
		}
	}
	public void addServiceToPackage(String strServiceName){
		Service service = Service.searchService(strServiceName);
		if(!serviceList.contains(service)){
			this.serviceList.add(service);
		}
	}
	public void removeServiceToPackage(String strServiceName){
		Service service = Service.searchService(strServiceName);
		if (serviceList.contains(service)){
			this.serviceList.remove(service);
		}
	}
	public void removeItemToPackage(String strItemName){
		Item item = Item.searchItem(strItemName);
		if (itemList.contains(item)){
			this.itemList.remove(item);
		}
	}
	
	public String create(){
		PackageService packageService = (PackageService)ServletActionContext.getServletContext()
				.getAttribute("packageService");
		return packageService.createPackage(this);
	}
	
	public void fetch(){
		PackageService packageService = (PackageService)ServletActionContext.getServletContext()
				.getAttribute("packageService");
		Package packageTo = packageService.searchPackage(this);
		if (packageTo != null){
			setDblPrice(packageTo.dblPrice);
			setItemList(packageTo.itemList);
			setPackageId(packageTo.packageId);
			setServiceList(packageTo.serviceList);
			setStrPackageDesc(packageTo.strPackageDesc);
			setStrPackageName(packageTo.strPackageName);
		}
	}
	
	public String update(){
		PackageService packageService = (PackageService)ServletActionContext.getServletContext()
				.getAttribute("packageService");
		return packageService.updatePackage(this);
	}
	
	public String delete(){
		PackageService packageService = (PackageService)ServletActionContext.getServletContext()
				.getAttribute("packageService");
		return packageService.deactivatePackage(this);
	}
	
	public static List<Package>getAllPackages(){
		PackageService packageService = (PackageService)ServletActionContext.getServletContext()
				.getAttribute("packageService");
		return packageService.getAllPackage();
	}
	
	public static int getNewPackageId(){
		PackageService packageService = (PackageService)ServletActionContext.getServletContext()
				.getAttribute("packageService");
		return packageService.getNewPackageId();
	}
	
	public static List<Package>searchPackageByName(String strPackageName){
		PackageService packageService = (PackageService)ServletActionContext.getServletContext()
				.getAttribute("packageService");
		Package packageTo = new Package();
		packageTo.setStrPackageName(strPackageName);
		return packageService.searchPackageByName(packageTo);
	}
	
}
