package columbarium.service;

import java.util.List;

import columbarium.model.Block;
import columbarium.model.Floor;
import columbarium.model.FloorType;
import columbarium.model.UnitCategory;

public interface FloorService {

	public String								configureFloor(Floor floor);
	
	public Floor								getFloorById(int floorId);
	
	public String								createFloorType(FloorType floorType);
	public List<FloorType>						getAllFloorType();
	
	public List<UnitCategory>					getAllUnitCategoryFromFloor(Floor floor);
	
	public String								configureUnitPrice(Block block);
	
}
