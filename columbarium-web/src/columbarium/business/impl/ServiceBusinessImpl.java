package columbarium.business.impl;

import columbarium.business.ServiceBusiness;
import columbarium.dao.ServiceRepository;

public class ServiceBusinessImpl implements ServiceBusiness{

	private ServiceRepository serviceRepository;
	
	public void setServiceRepository(ServiceRepository serviceRepository){
		this.serviceRepository = serviceRepository;
	}
	
	@Override
	public int getUpdatedServiceId() {
		// TODO Auto-generated method stub
		return serviceRepository.getLastServiceId() + 1;
	}

}
