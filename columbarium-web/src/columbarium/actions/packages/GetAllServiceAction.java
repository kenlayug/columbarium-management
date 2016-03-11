package columbarium.actions.packages;

import java.util.List;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

import columbarium.model.Service;

public class GetAllServiceAction extends ActionSupport implements Action{

	private static final long serialVersionUID = 1L;
	private List<Service>serviceList;
	
	public List<Service>getServiceList(){
		return serviceList;
	}
	
	public String execute(){
		
		serviceList = Service.getAllServices();
		return "success";
		
	}
	
}
