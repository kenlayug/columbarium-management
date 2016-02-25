package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Requirement;

public interface RequirementMapper {

	public void					insertRequirement(Requirement requirement);
	public Requirement			selectRequirement(Requirement requirement);
	public void					updateRequirement(Requirement requirement);
	public void					deactivateRequirement(Requirement requirement);
	
	public Integer				checkIfExistingRequirement(Requirement requirement);
	public Integer				countAllRequirement();
	
	public List<Requirement>	getAllRequirements();
	public List<Requirement>	searchRequirementByName(Requirement requirement);
	
}
