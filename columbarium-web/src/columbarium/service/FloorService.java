package columbarium.service;

import java.util.List;

import columbarium.model.Floor;
import columbarium.model.FloorType;
import columbarium.model.UnitCategory;

public interface FloorService {

	public String								configureFloor(Floor floor);
	
	public String								createFloorType(FloorType floorType);
	public List<FloorType>						getAllFloorType();
	
	public List<UnitCategory>					getAllUnitCategoryFromFloor(Floor floor);
	
	public String								configureUnitPrice(Floor floor);
	
}
