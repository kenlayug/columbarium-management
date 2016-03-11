package columbarium.actions.packages;

import columbarium.model.Package;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class GetPackageAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Package packageTo;
	private int packageId;
	
	public Package getPackageTo(){
		return packageTo;
	}
	
	public void setPackageId(int packageId){
		this.packageId = packageId;
	}
	
	public String execute(){
		packageTo = Package.getById(packageId);
		System.out.println("nakuha na ang package...");
		return "success";
		
	}
	
}
