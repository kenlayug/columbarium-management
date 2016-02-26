package columbarium.business;

import columbarium.model.Service;

public interface ServiceBusiness {

	public int getUpdatedServiceId();
	public String createService(Service service);
	
}
