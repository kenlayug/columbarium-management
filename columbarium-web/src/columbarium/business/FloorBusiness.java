package columbarium.business;

import columbarium.model.Floor;
import columbarium.model.FloorType;

public interface FloorBusiness {

	public String configureFloor(Floor floor);
	
	public String createFloorType(FloorType floorType);
	
}
