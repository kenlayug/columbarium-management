package columbarium.actions.service;

import java.util.List;

import com.opensymphony.xwork2.Action;

import columbarium.model.Requirement;
import columbarium.model.Service;

public class InitializeServiceScreenAction implements Action{

	private List<Service>serviceList;
	private List<Requirement>requirementList;
	
	public void setRequirementList(List<Requirement>requirementList){
		this.requirementList = requirementList;
	}
	
	public List<Requirement>getRequirementList(){
		return this.requirementList;
	}
	
	public List<Service> getServiceList() {
		return serviceList;
	}

	public void setServiceList(List<Service> serviceList) {
		this.serviceList = serviceList;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		setServiceList(Service.getAllServices());
		setRequirementList(Requirement.getAllRequirements());
		return "success";
	}

}
