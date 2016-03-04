package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Building;
import columbarium.model.Floor;

public interface BuildingMapper {

	public void createBuilding(Building building);
	public Building getBuilding(Building building);
	public void updateBuilding(Building building);
	public void deactivateBuilding(Building building);
	
	public void createFloor(Floor floor);
	
	public Integer countAllBuilding();
	
	public List<Building>getAllBuilding();
	
	public int checkIfExistingBuilding(Building building);
	
}
