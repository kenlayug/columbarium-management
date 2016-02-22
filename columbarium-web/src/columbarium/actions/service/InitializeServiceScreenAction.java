package columbarium.actions.service;

import java.util.List;

import com.opensymphony.xwork2.Action;

import columbarium.model.Service;

public class InitializeServiceScreenAction implements Action{

	private List<Service>serviceList;
	
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
		return "success";
	}

}
