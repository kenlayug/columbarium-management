package columbarium.actions.service;

import com.opensymphony.xwork2.Action;

import columbarium.model.Service;

public class DeactivateServiceAction implements Action{

	private String strServiceName;
	private String strStatus;
	private int serviceId;
	
	public void setServiceId(int serviceId){
		this.serviceId = serviceId;
	}
	
	public String getStatus(){
		return strStatus;
	}
	
	public String getStrServiceName() {
		return strServiceName;
	}

	public void setStrServiceName(String strServiceName) {
		this.strServiceName = strServiceName;
	}

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		Service service = Service.searchServiceById(serviceId);
		strStatus = service.delete();
		return "success";
	}

}
