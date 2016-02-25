package columbarium.actions.requirement;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Requirement;

public class DeactivateRequirementAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private String strRequirementName;
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
	
	public String execute(){
		strStatus = Requirement.deactivate(getStrRequirementName());
		return "success";
	}
	
	public void validate(){
		
		if (getStrRequirementName().length() == 0 || getStrRequirementName() == null){
			strStatus = "failed-input";
		}
		
	}
	
}
