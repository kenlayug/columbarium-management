package columbarium.actions.service;

import com.opensymphony.xwork2.Action;

import columbarium.model.Item;
import columbarium.model.Service;

public class UpdateServiceAction implements Action{

	private String strServiceName;
	private Service service;
	
	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	public String getStrServiceName() {
		return strServiceName;
	}

	public void setStrServiceName(String strService) {
		this.strServiceName = strService;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Service service = Service.searchService(getStrServiceName());
		getService().setServiceId(service.getServiceId());
		return getService().update();
	}

}
