package columbarium.dao;

import java.util.List;

import columbarium.model.Service;

public interface ServiceRepository {

	public String createService(Service service);
	public Service searchService(Service service);
	public String updateService(Service service);
	public String deactivateService(Service service);
	
	public List<Service>getAllService();
	public List<Service>searchServiceByName(Service service);
	
	public int getLastServiceId();
	
}
