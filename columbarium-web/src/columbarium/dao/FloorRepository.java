package columbarium.dao;

import java.util.List;

import columbarium.model.Floor;
import columbarium.model.FloorType;

public interface FloorRepository {

	public String							configureFloor(Floor floor);
	
	public String							createFloorType(FloorType floorType);
	public FloorType						getFloorType(FloorType floorType);
	public List<FloorType>					getAllFloorType();
	
}
