package columbarium.service.impl;

import java.util.List;

import columbarium.business.ServiceBusiness;
import columbarium.dao.ServiceRepository;
import columbarium.model.Service;
import columbarium.service.ServiceService;

public class ServiceServiceImpl implements ServiceService{

	private ServiceRepository serviceRepository;
	private ServiceBusiness serviceBusiness;
	
	public void setServiceBusiness(ServiceBusiness serviceBusiness){
		this.serviceBusiness = serviceBusiness;
	}
	
	public void setServiceRepository(ServiceRepository serviceRepository){
		this.serviceRepository = serviceRepository;
	}
	
	@Override
	public String createService(Service service) {
		// TODO Auto-generated method stub
		return serviceBusiness.createService(service);
	}

	@Override
	public Service searchService(Service service) {
		// TODO Auto-generated method stub
		return serviceRepository.searchService(service);
	}

	@Override
	public String updateService(Service service) {
		// TODO Auto-generated method stub
		return serviceRepository.updateService(service);
	}

	@Override
	public List<Service> getAllService() {
		// TODO Auto-generated method stub
		return serviceRepository.getAllService();
	}

	@Override
	public String deactivateService(Service service) {
		// TODO Auto-generated method stub
		return serviceRepository.deactivateService(service);
	}

	@Override
	public int getNewServiceId() {
		// TODO Auto-generated method stub
		return serviceBusiness.getUpdatedServiceId();
	}

	@Override
	public List<Service> searchServiceByName(Service service) {
		// TODO Auto-generated method stub
		return serviceRepository.searchServiceByName(service);
	}

}
