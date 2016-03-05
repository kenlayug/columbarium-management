package columbarium.actions.service;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Service;

public class GetServiceInfoAction extends ActionSupport implements Action{

	private Service service;
	private String strServiceName;
	private int serviceId;
	
	public void setServiceId(int serviceId){
		this.serviceId = serviceId;
	}
	
	public Service getService() {
		return service;
	}

	public void setService(Service service) {
		this.service = service;
	}

	public String getStrServiceName() {
		return strServiceName;
	}

	public void setStrServiceName(String strServiceName) {
		this.strServiceName = strServiceName;
	}

	public String execute(){
		
		setService(Service.searchServiceById(serviceId));
		return "success";
		
	}
	
}
