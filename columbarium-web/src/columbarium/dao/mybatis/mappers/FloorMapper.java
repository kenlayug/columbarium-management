package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Building;
import columbarium.model.Floor;

public interface FloorMapper {

	public void createFloor(Floor floor);
	
	public Floor selectFloorById(Floor floor);
	
	public List<Floor> selectAllFloorsOfBuilding(Building building);
	
}
