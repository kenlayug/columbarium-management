package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Service;

public interface ServiceMapper {

	public void saveService(Service service);
	public Service getService(Service service);
	public void updateService(Service service);
	public void deactivateService(Service service);
	
	public Integer checkIfExisting(Service service);
	
	public List<Service>getAllService();
	public int countAllService();
	public List<Service>searchServiceList(Service service);
	
	public int getLastServiceId();
	
}
