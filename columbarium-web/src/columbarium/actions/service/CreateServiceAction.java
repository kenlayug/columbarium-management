package columbarium.actions.service;

import com.opensymphony.xwork2.Action;

import columbarium.model.Service;

public class CreateServiceAction implements Action{

	private Service service;
	
	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return getService().create();
	}

}
