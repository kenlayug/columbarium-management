package columbarium.dao;

import java.util.List;

import columbarium.model.Block;
import columbarium.model.Building;
import columbarium.model.Floor;

public interface BuildingRepository {

	public String createBuilding(Building building);
	public String createFloor(Floor floor);
	public String createBlock(Block block);
	
	public List<Building>getAllBuilding();
	
}
