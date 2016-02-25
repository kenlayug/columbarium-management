package columbarium.actions.requirement;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Requirement;

public class UpdateRequirementAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private String strRequirementName;
	private Requirement requirement;
	private String strStatus;
	
	public String getStatus(){
		return strStatus;
	}
	public String getStrRequirementName() {
		return strRequirementName;
	}
	public void setStrRequirementName(String strRequirementName) {
		this.strRequirementName = strRequirementName;
	}
	public Requirement getRequirement() {
		return requirement;
	}
	public void setRequirement(Requirement requirement) {
		this.requirement = requirement;
	}
	
	public String execute(){
		
		strStatus = getRequirement().update(getStrRequirementName());
		return "success";
		
	}
	
	public void validate(){
		
		if ((getRequirement().getStrRequirementName().length() == 0 ||
				getRequirement().getStrRequirementName() == null) &&
				(getRequirement().getStrRequirementDesc().length() == 0 ||
				getRequirement().getStrRequirementDesc() == null)){
			strStatus = "failed-input";
		}
		
	}
	
}
