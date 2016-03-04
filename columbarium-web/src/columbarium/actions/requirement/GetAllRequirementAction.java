package columbarium.actions.requirement;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Requirement;

public class GetAllRequirementAction extends ActionSupport implements Action{

	private List<Requirement>requirementList;
	
	public List<Requirement>getRequirementList(){
		return this.requirementList;
	}
	
	public String execute(){
		
		requirementList = Requirement.getAllRequirements();
		return "success";
		
	}
	
}
