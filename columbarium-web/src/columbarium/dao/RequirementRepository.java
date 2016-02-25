package columbarium.dao;

import java.util.List;

import columbarium.model.Requirement;

public interface RequirementRepository {

	public String								createRequirement(Requirement requirement);
	public Requirement							readRequirement(Requirement requirement);
	public String								updateRequirement(Requirement requirement);
	public String								deactivateRequirement(Requirement requirement);
	
	public List<Requirement>					getAllRequirements();
	public List<Requirement>					searchRequirementByName(Requirement requirement);
	
}
