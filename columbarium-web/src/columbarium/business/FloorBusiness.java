package columbarium.business;

import columbarium.model.Floor;
import columbarium.model.FloorType;

public interface FloorBusiness {

	public String configureFloor(Floor floor);
	
	public Floor getFloorById(int floorId);
	
	public String createFloorType(FloorType floorType);
	
	public String configureUnitPrice(Floor floor);
	
}
