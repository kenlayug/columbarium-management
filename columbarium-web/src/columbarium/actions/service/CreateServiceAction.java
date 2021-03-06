package columbarium.actions.service;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Requirement;
import columbarium.model.Service;

public class CreateServiceAction extends ActionSupport implements Action{

	private Service service;
	private String strStatus;
	
	public String getStatus(){
		return strStatus;
	}
	
	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		if (getService().getRequirementListByString() != null){
			for (String strRequirement : getService().getRequirementListByString()) {
				getService().setAddRequirement(strRequirement);
			}
		}
		strStatus = getService().create();
		System.out.println(strStatus);
		return "success";
	}
	
}
