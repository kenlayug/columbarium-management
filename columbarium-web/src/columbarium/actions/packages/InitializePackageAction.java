package columbarium.actions.packages;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Item;
import columbarium.model.Service;
import columbarium.model.Package;

public class InitializePackageAction extends ActionSupport implements Action{

	private List<Item> itemList;
	private List<Service> serviceList;
	private List<Package> packageList;
	public List<Item> getItemList() {
		return itemList;
	}
	public void setItemList(List<Item> itemList) {
		this.itemList = itemList;
	}
	public List<Service> getServiceList() {
		return serviceList;
	}
	public void setServiceList(List<Service> serviceList) {
		this.serviceList = serviceList;
	}
	public void setPackageList(List<Package> packageList){
		this.packageList = packageList;
	}
	public List<Package>getPackageList(){
		return this.packageList;
	}
	
	public String execute(){
		
		setItemList(Item.getAllItems());
		setServiceList(Service.getAllServices());
		setPackageList(Package.getAllPackages());
		return "success";
		
	}
	
}
