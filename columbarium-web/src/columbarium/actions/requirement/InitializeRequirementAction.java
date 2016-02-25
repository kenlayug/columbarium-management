package columbarium.actions.requirement;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Requirement;

public class InitializeRequirementAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private List<Requirement>requirementList;
	private String strStatus;
	
	public String getStatus(){
		return strStatus;
	}

	public List<Requirement> getRequirementList() {
		return requirementList;
	}

	public void setRequirementList(List<Requirement> requirementList) {
		this.requirementList = requirementList;
	}
	
	public String execute(){
		
		setRequirementList(Requirement.getAllRequirements());
		if (getRequirementList().size() == 0){
			strStatus = "failed-no-available";
		}
		return "success";
	}
	
}
