package columbarium.service;

import java.util.List;

import columbarium.model.Building;

public interface BuildingService {

	public String createBuilding(Building building);
	public Building getBuilding(String strBuildingName);
	public String updateBuilding(Building building);
	public String deactivateBuilding(String strBuildingName);
	
	public List<Building>getAllBuilding();
	
}
