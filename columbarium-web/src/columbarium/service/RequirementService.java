package columbarium.service;

import java.util.List;

import columbarium.model.Requirement;

public interface RequirementService {

	public String createRequirement(Requirement requirement);
	public Requirement readRequirement(int requirementId);
	public String updateRequirement(String strRequirementName, Requirement requirementUpdate);
	public String deactivateRequirement(int requirementId);
	
	public List<Requirement>getAllRequirement();
	public List<Requirement>searchRequirementByName(String strRequirementName);
	
}
