package columbarium.business;

import java.util.List;

import columbarium.model.Requirement;

public interface RequirementBusiness {

	public String createRequirement(Requirement requirement);
	public Requirement readRequirement(String strRequirementName);
	public String updateRequirement(String strRequirement, Requirement requirementUpdate);
	public String deactivateRequirement(String strRequirement);
	
	public List<Requirement>searchRequirementByName(String strRequirementName);
	
}
