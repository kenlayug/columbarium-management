package columbarium.model;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import columbarium.service.ServiceService;

public class Service {

	private int serviceId;
	private String strServiceName;
	private String strServiceDesc;
	private double dblPrice;
	private List<Requirement>requirementList;
	private String[]requirementString;
	
	public Service(){
		
	}
	
	public Service(String strServiceName){
		this.strServiceName = strServiceName;
	}
	
	public void setRequirementList(List<Requirement>requirements){
		this.requirementList = requirements;
	}
	
	public List<Requirement>getRequirementList(){
		return this.requirementList;
	}
	
	public void setRequirementListByString(String[]arrRequirement){
		this.requirementString = arrRequirement;
	}
	
	public String[]getRequirementListByString(){
		return requirementString;
	}
	
	public void setAddRequirement(String strRequirement){
		Requirement requirement = new Requirement(strRequirement);
		if (requirementList == null){
			requirementList = new ArrayList<Requirement>();
		}
		if (!requirementList.contains(requirement)){
			this.requirementList.add(requirement);
		}
	}
	
	public void setRemoveRequirement(String strRequirement){
		Requirement requirement = new Requirement(strRequirement);
		if (requirementList == null){
			requirementList = new ArrayList<Requirement>();
		}
		if (requirementList.contains(requirement)){
			this.requirementList.remove(requirement);
		}
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
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((strServiceName == null) ? 0 : strServiceName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (!(obj instanceof Service)) {
			return false;
		}
		Service other = (Service) obj;
		if (strServiceName == null) {
			if (other.strServiceName != null) {
				return false;
			}
		} else if (!strServiceName.equals(other.strServiceName)) {
			return false;
		}
		return true;
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
		if (service != null){
			setServiceId(service.getServiceId());
			setStrServiceName(service.getStrServiceName());
			setStrServiceDesc(service.getStrServiceDesc());
			setDblPrice(Double.parseDouble(service.getDblPrice()));
			setRequirementList(service.getRequirementList());
		}
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
	
	public static Service searchService(String strServiceName){
		Service service = new Service(strServiceName);
		ServiceService serviceService = (ServiceService)ServletActionContext.getServletContext()
				.getAttribute("serviceService");
		return serviceService.searchService(service);
	}
	
	public static Service searchServiceById(int serviceId){
		
		ServiceService serviceService = (ServiceService)ServletActionContext.getServletContext()
				.getAttribute("serviceService");
		Service service = new Service();
		service.setServiceId(serviceId);
		return serviceService.searchService(service);
		
	}
	
}
