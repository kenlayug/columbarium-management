package columbarium.business;

import columbarium.model.Building;

public interface BuildingBusiness {

	public String createBuilding(Building building);
	public Building getBuilding(String strBuildingName);
	public Building getBuildingById(int buildingId);
	public String updateBuilding(Building building);
	public String deactivateBuilding(String strBuildingName);
	
}
