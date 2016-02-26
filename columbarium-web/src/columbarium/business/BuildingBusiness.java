package columbarium.business;

import columbarium.model.Building;
import columbarium.model.Floor;

public interface BuildingBusiness {

	public String createBuilding(Building building);
	public String createFloor(Floor floor);
	
}
