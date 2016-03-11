package columbarium.actions.packages;

import java.util.List;

import columbarium.model.Package;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class GetAllPackageAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private List<Package>packageList;
	
	public List<Package>getPackageList(){
		return this.packageList;
	}
	
	public String execute(){
		
		packageList = Package.getAllPackages();
		return "success";
		
	}
	
}
