package columbarium.service;

import java.util.List;

import columbarium.model.Building;

public interface BuildingService {

	public String createBuilding(Building building);
	
	public List<Building>getAllBuilding();
	
}
