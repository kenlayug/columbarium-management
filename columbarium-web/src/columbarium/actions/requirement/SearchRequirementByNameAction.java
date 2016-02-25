package columbarium.actions.requirement;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Requirement;

public class SearchRequirementByNameAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private String strRequirementName;
	private List<Requirement>requirementList;
	public String getStrRequirementName() {
		return strRequirementName;
	}
	public void setStrRequirementName(String strRequirementName) {
		this.strRequirementName = strRequirementName;
	}
	public List<Requirement> getRequirementList() {
		return requirementList;
	}
	public void setRequirementList(List<Requirement> requirementList) {
		this.requirementList = requirementList;
	}
	
	public String execute(){
		
		setRequirementList(Requirement.searchByName(getStrRequirementName()));
		return "success";
		
	}
	
}
