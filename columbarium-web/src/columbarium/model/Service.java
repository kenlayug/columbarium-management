package columbarium.model;

import java.text.DecimalFormat;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.ServiceService;

public class Service {

	private int serviceId;
	private String strServiceName;
	private String strServiceDesc;
	private double dblPrice;
	
	public Service(){
		
	}
	
	public Service(String strServiceName){
		this.strServiceName = strServiceName;
	}
	
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public String getStrServiceName() {
		return strServiceName;
	}
	public void setStrServiceName(String strServiceName) {
		this.strServiceName = strServiceName;
	}
	public String getStrServiceDesc() {
		return strServiceDesc;
	}
	public void setStrServiceDesc(String strServiceDesc) {
		this.strServiceDesc = strServiceDesc;
	}
	public String getDblPrice() {
		DecimalFormat deciFormat = new DecimalFormat("0.00");
		return deciFormat.format(dblPrice);
	}
	public void setDblPrice(double dblPrice) {
		this.dblPrice = dblPrice;
	}
	
	public String toString(){
		return getStrServiceName()+" -- P"+getDblPrice();
	}
	
	public String create(){
		ServiceService serviceService = (ServiceService)ServletActionContext.getServletContext()
				.getAttribute("serviceService");
		return serviceService.createService(this);
	}
	
	public void fetch(){
		ServiceService serviceService = (ServiceService)ServletActionContext.getServletContext()
				.getAttribute("serviceService");
		Service service = serviceService.searchService(this);
		setServiceId(service.getServiceId());
		setStrServiceName(service.getStrServiceName());
		setStrServiceDesc(service.getStrServiceDesc());
		setDblPrice(Double.parseDouble(service.getDblPrice()));
	}
	
	public String update(){
		ServiceService serviceService = (ServiceService)ServletActionContext.getServletContext()
				.getAttribute("serviceService");
		return serviceService.updateService(this);
	}
	
	public String delete(){
		ServiceService serviceService = (ServiceService)ServletActionContext.getServletContext()
				.getAttribute("serviceService");
		return serviceService.deactivateService(this);
	}
	
	public static List<Service>getAllServices(){
		ServiceService serviceService = (ServiceService)ServletActionContext.getServletContext()
				.getAttribute("serviceService");
		return serviceService.getAllService();
	}
	
	public static int getNewServiceId(){
		ServiceService serviceService = (ServiceService)ServletActionContext.getServletContext()
				.getAttribute("serviceService");
		return serviceService.getNewServiceId();
	}
	
	public static List<Service>searchByName(String strServiceName){
		Service service = new Service(strServiceName);
		ServiceService serviceService = (ServiceService)ServletActionContext.getServletContext()
				.getAttribute("serviceService");
		return serviceService.searchServiceByName(service);
	}
	
}
