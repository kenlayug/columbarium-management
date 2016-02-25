package columbarium.business.impl;

import java.util.List;

import columbarium.business.RequirementBusiness;
import columbarium.dao.RequirementRepository;
import columbarium.model.Requirement;

public class RequirementBusinessImpl implements RequirementBusiness{

	private RequirementRepository requirementRepository;
	
	public void setRequirementRepository(RequirementRepository requirementRepository){
		this.requirementRepository = requirementRepository;
	}

	@Override
	public String updateRequirement(String strRequirement, Requirement requirementUpdate) {

		Requirement requirement = new Requirement(strRequirement);
		requirement = requirementRepository.readRequirement(requirement);
		if (requirement == null){
			return "failed-does-not-exist";
		}
		if (requirementUpdate.getStrRequirementDesc().length() == 0){
			requirementUpdate.setStrRequirementDesc(null);
		}
		if(requirementUpdate.getStrRequirementName().length() == 0){
			requirementUpdate.setStrRequirementName(null);
		}
		requirementUpdate.setRequirementId(requirement.getRequirementId());
		return requirementRepository.updateRequirement(requirementUpdate);
		
	}

	@Override
	public String deactivateRequirement(String strRequirement) {

		Requirement requirement = new Requirement(strRequirement);
		requirement.setRequirementId(requirementRepository.readRequirement(requirement).getRequirementId());
		return requirementRepository.deactivateRequirement(requirement);
		
	}

	@Override
	public Requirement readRequirement(String strRequirementName) {

		Requirement requirement = new Requirement(strRequirementName);
		return requirementRepository.readRequirement(requirement);
		
	}

	@Override
	public List<Requirement> searchRequirementByName(String strRequirementName) {

		Requirement requirement = new Requirement(strRequirementName);
		return requirementRepository.searchRequirementByName(requirement);
	}

}