package columbarium.service.impl;

import java.util.List;

import columbarium.business.RequirementBusiness;
import columbarium.dao.RequirementRepository;
import columbarium.model.Requirement;
import columbarium.service.RequirementService;

public class RequirementServiceImpl implements RequirementService{

	private RequirementRepository					requirementRepository;
	private RequirementBusiness						requirementBusiness;
	
	public void setRequirementRepository(RequirementRepository requirementRepository){
		this.requirementRepository = requirementRepository;
	}
	
	public void setRequirementBusiness(RequirementBusiness requirementBusiness){
		this.requirementBusiness = requirementBusiness;
	}
	
	@Override
	public String createRequirement(Requirement requirement) {
		return requirementBusiness.createRequirement(requirement);
	}

	@Override
	public Requirement readRequirement(int requirementId) {
		return requirementBusiness.readRequirement(requirementId);
	}

	@Override
	public String updateRequirement(String strRequirementName, Requirement requirementUpdate) {
		return requirementBusiness.updateRequirement(strRequirementName, requirementUpdate);
	}

	@Override
	public String deactivateRequirement(int requirementId) {
		return requirementBusiness.deactivateRequirement(requirementId);
	}

	@Override
	public List<Requirement> getAllRequirement() {
		return requirementRepository.getAllRequirements();
	}

	@Override
	public List<Requirement> searchRequirementByName(String strRequirementName) {
		return requirementBusiness.searchRequirementByName(strRequirementName);
	}

}
