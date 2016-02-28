package columbarium.actions.packages;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Package;

public class CreatePackageAction extends ActionSupport implements Action{

	private String[]serviceList;
	private String[]itemList;
	private Package packageTo;
	private String strStatus;
	
	public String getStatus(){
		return strStatus;
	}
	public void setPackageTo(Package packageTo){
		this.packageTo = packageTo;
	}
	public Package getPackageTo(){
		return packageTo;
	}
	public void setServiceList(String[]serviceList){
		this.serviceList = serviceList;
	}
	public String[]getServiceList(){
		return serviceList;
	}
	public String[] getItemList() {
		return itemList;
	}
	public void setItemList(String[] itemList) {
		this.itemList = itemList;
	}
	
	public String execute(){
		
		for (String strItemName : itemList) {
			getPackageTo().addItemToPackage(strItemName);
		}
		for (String strServiceName : serviceList) {
			getPackageTo().addServiceToPackage(strServiceName);
		}
		strStatus = getPackageTo().create();
		System.out.println(strStatus);
		return "success";
		
	}
	
}
