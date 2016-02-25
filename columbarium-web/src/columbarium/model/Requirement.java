package columbarium.model;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.RequirementService;

public class Requirement {
	
	private int requirementId;
	private String strRequirementName;
	private String strRequirementDesc;
	
	public Requirement(){
		
		
	}
	
	public Requirement(String strRequirementName){
		this.strRequirementName = strRequirementName;
	}
	public int getRequirementId() {
		return requirementId;
	}
	public void setRequirementId(int requirementId) {
		this.requirementId = requirementId;
	}
	public String getStrRequirementName() {
		return strRequirementName;
	}
	public void setStrRequirementName(String strRequirementName) {
		this.strRequirementName = strRequirementName;
	}
	public String getStrRequirementDesc() {
		return strRequirementDesc;
	}
	public void setStrRequirementDesc(String strRequirementDesc) {
		this.strRequirementDesc = strRequirementDesc;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + requirementId;
		result = prime * result + ((strRequirementDesc == null) ? 0 : strRequirementDesc.hashCode());
		result = prime * result + ((strRequirementName == null) ? 0 : strRequirementName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof Requirement)) {
			return false;
		}
		Requirement other = (Requirement) obj;
		if (requirementId != other.requirementId) {
			return false;
		}
		if (strRequirementDesc == null) {
			if (other.strRequirementDesc != null) {
				return false;
			}
		} else if (!strRequirementDesc.equals(other.strRequirementDesc)) {
			return false;
		}
		if (strRequirementName == null) {
			if (other.strRequirementName != null) {
				return false;
			}
		} else if (!strRequirementName.equals(other.strRequirementName)) {
			return false;
		}
		return true;
	}
	
	public String toString(){
		return getStrRequirementName();
	}
	
	public String create(){
		RequirementService requirementService = (RequirementService)ServletActionContext.getServletContext()
				.getAttribute("requirementService");
		return requirementService.createRequirement(this);
	}
	
	public void read(){
		RequirementService requirementService = (RequirementService)ServletActionContext.getServletContext()
				.getAttribute("requirementService");
		Requirement requirement = requirementService.readRequirement(getStrRequirementName());
		if (requirement != null){
			setRequirementId(requirement.getRequirementId());
			setStrRequirementName(requirement.getStrRequirementName());
			setStrRequirementDesc(requirement.getStrRequirementDesc());
		}
	}
	
	public String update(String strRequirementName){
		RequirementService requirementService = (RequirementService)ServletActionContext.getServletContext()
				.getAttribute("requirementService");
		return requirementService.updateRequirement(strRequirementName, this);
	}
	
	public static String deactivate(String strRequirementName){
		RequirementService requirementService = (RequirementService)ServletActionContext.getServletContext()
				.getAttribute("requirementService");
		return requirementService.deactivateRequirement(strRequirementName);
	}
	
	public static List<Requirement>getAllRequirements(){
		RequirementService requirementService = (RequirementService)ServletActionContext.getServletContext()
				.getAttribute("requirementService");
		return requirementService.getAllRequirement();
	}
	
	public static List<Requirement>searchByName(String strRequirementName){
		RequirementService requirementService = (RequirementService)ServletActionContext.getServletContext()
				.getAttribute("requirementService");
		return requirementService.searchRequirementByName(strRequirementName);
	}

}
