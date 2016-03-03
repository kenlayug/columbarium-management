package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Floor;
import columbarium.model.FloorType;
import columbarium.model.UnitCategory;

public interface FloorMapper {

	public void									configureFloor(Floor floor);
	public Floor								getFloor(Floor floor);
	
	public int									checkIfExistingFloor(Floor floor);
	
	public void									createFloorType(FloorType floorType);
	public FloorType							getFloorType(FloorType floorType);
	public List<FloorType>						getAllFloorType();
	public int									checkIfExistingFloorType(FloorType floorType);
	
	public void									createUnitCategory(UnitCategory unitCategory);
	public UnitCategory							getUnitCategory(UnitCategory unitCategory);
	public List<UnitCategory>					getAllUnitCategoryFromFloor(Floor floor);
	public int									checkIfExistingUnitCategory(UnitCategory unitCategory);
	
	public void									configureUnitCategoryPrice(UnitCategory unitCategory);
	public Double								getUnitCategoryPrice(UnitCategory unitCategory);
	
}
