package columbarium.actions.service;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Service;

public class GetAllServiceAction extends ActionSupport implements Action{

	private List<Service>serviceList;
	
	public void setServiceList(List<Service>serviceList){
		this.serviceList=serviceList;
	}
	
	public List<Service>getServiceList(){
		return this.serviceList;
	}
	
	public String execute(){
		
		setServiceList(Service.getAllServices());
		return "success";
		
	}
	
}
