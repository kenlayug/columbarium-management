package columbarium.service;

import java.util.List;

import columbarium.model.Requirement;

public interface RequirementService {

	public String createRequirement(Requirement requirement);
	public Requirement readRequirement(String strRequirementName);
	public String updateRequirement(String strRequirementName, Requirement requirementUpdate);
	public String deactivateRequirement(String strRequirementName);
	
	public List<Requirement>getAllRequirement();
	public List<Requirement>searchRequirementByName(String strRequirementName);
	
}
