package columbarium.service;

import java.util.List;

import columbarium.model.Building;
import columbarium.model.Floor;

public interface BuildingService {

	public String createBuilding(Building building);
	public String createFloor(Floor floor);
	
	public List<Building>getAllBuilding();
	
}
