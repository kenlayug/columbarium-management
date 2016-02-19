package columbarium.dao.mybatis.mappers;

import columbarium.model.Block;
import columbarium.model.Building;
import columbarium.model.Floor;
import columbarium.model.Unit;

public interface BuildingMapper {

	public void createBuilding(Building building);
	public void createFloor(Floor floor);
	public void createBlock(Block block);
	public void createUnitCategory(Floor floor);
	public void createUnit(Unit unit);
	
	public int checkIfExistingBuilding(Building building);
	
}