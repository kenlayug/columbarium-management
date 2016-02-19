package columbarium.dao;

import columbarium.model.Building;
import columbarium.model.Floor;

public interface BuildingRepository {

	public String createBuilding(Building building);
	public String createFloor(Floor floor);
	
}
