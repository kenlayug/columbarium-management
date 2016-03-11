package columbarium.actions.packages;

import columbarium.model.Package;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class DeactivatePackageAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private int packageId;
	private String status;
	
	public void setPackageId(int packageId){
		this.packageId = packageId;
	}
	
	public String getStatus(){
		return status;
	}
	
	public String execute(){
		
		status = Package.delete(packageId);
		return "success";
		
	}
	
}
