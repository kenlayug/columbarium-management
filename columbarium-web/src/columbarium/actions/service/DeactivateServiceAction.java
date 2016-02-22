package columbarium.actions.service;

import com.opensymphony.xwork2.Action;

import columbarium.model.Service;

public class DeactivateServiceAction implements Action{

	private String strServiceName;
	
	public String getStrServiceName() {
		return strServiceName;
	}

	public void setStrServiceName(String strServiceName) {
		this.strServiceName = strServiceName;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Service service = Service.searchService(strServiceName);
		return service.delete();
	}

}