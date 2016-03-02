package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Floor;
import columbarium.model.FloorType;
import columbarium.model.UnitCategory;

public interface FloorMapper {

	public void								configureFloor(Floor floor);
	public Floor							getFloor(Floor floor);
	
	public int								checkIfExistingFloor(Floor floor);
	
	public void								createFloorType(FloorType floorType);
	public FloorType						getFloorType(FloorType floorType);
	public List<FloorType>					getAllFloorType();
	public int								checkIfExistingFloorType(FloorType floorType);
	
	public void								createUnitCategory(UnitCategory unitCategory);
	public UnitCategory						getUnitCategory(UnitCategory unitCategory);
	public int								checkIfExistingUnitCategory(UnitCategory unitCategory);
	
}
