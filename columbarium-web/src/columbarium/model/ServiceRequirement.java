package columbarium.model;

public class ServiceRequirement {

	private int serviceId;
	private int requirementId;
	
	public ServiceRequirement(int serviceId, int requirementId){
		this.serviceId = serviceId;
		this.requirementId = requirementId;
	}

	public int getServiceId() {
		return serviceId;
	}

	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}

	public int getRequirementId() {
		return requirementId;
	}

	public void setRequirementId(int requirementId) {
		this.requirementId = requirementId;
	}
	
}
