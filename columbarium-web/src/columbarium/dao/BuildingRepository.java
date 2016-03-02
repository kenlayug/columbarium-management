package columbarium.dao;

import java.util.List;

import columbarium.model.Building;

public interface BuildingRepository {

	public String createBuilding(Building building);
	public Building getBuilding(Building building);
	public String updateBuilding(Building building);
	public String deactivateBuilding(Building building);
	
	public List<Building>getAllBuilding();
	
}
