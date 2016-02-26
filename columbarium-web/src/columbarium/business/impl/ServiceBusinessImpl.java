package columbarium.business.impl;

import columbarium.business.ServiceBusiness;
import columbarium.dao.ServiceRepository;
import columbarium.model.Service;

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

	@Override
	public String createService(Service service) {

		if (service.getStrServiceName().length() == 0 ||
				service.getStrServiceName() == null){
			return "input";
		}
		if (service.getStrServiceDesc().length() == 0 ||
				service.getStrServiceDesc() == null){
			return "input";
		}
		if (Double.parseDouble(service.getDblPrice()) == 0){
			return "input";
		}
		return serviceRepository.createService(service);
	}

}
