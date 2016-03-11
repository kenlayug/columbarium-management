package columbarium.actions.packages;

import columbarium.model.Package;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class UpdatePackageAction extends ActionSupport implements Action{

	private Package packageTo;
	private String[]itemList;
	private String[]serviceList;
	private String status;
	private int packageId;
	
	public void setPackageId(int packageId){
		this.packageId = packageId;
	}
	
	public String getStatus(){
		return status;
	}
	
	public void setPackageTo(Package packageTo){
		this.packageTo = packageTo;
	}
	
	public void setItemList(String[]itemList){
		this.itemList = itemList;
	}
	
	public void setServiceList(String[]serviceList){
		this.serviceList = serviceList;
	}
	
	public String execute(){
		
		for (String strItemName : itemList) {
			packageTo.addItemToPackage(strItemName);
		}
		for (String strServiceName : serviceList) {
			packageTo.addServiceToPackage(strServiceName);
		}
		packageTo.setPackageId(packageId);
		status = packageTo.update();
		System.out.println(status);
		return "success";
		
	}
	
}
