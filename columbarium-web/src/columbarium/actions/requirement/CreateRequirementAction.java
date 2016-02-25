package columbarium.actions.requirement;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Requirement;

public class CreateRequirementAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private Requirement requirement;
	private String strStatus;
	
	public String getStatus(){
		return strStatus;
	}

	public Requirement getRequirement() {
		return requirement;
	}

	public void setRequirement(Requirement requirement) {
		this.requirement = requirement;
	}
	
	public String execute(){
		
		strStatus = getRequirement().create();
		return "success";
		
	}
	
	public void validate(){
		
		if (requirement.getStrRequirementName().length() == 0 || 
				requirement.getStrRequirementName() == null){
			strStatus = "failed-input";
		}
		
	}
	
}
