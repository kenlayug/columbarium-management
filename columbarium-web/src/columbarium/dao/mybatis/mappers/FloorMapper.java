package columbarium.dao.mybatis.mappers;

import java.util.List;

import columbarium.model.Floor;
import columbarium.model.FloorDetail;
import columbarium.model.FloorType;
import columbarium.model.UnitCategory;

public interface FloorMapper {

	public void									configureFloor(FloorDetail floorDetail);
	public Floor								getFloor(Floor floor);
	
	public int									checkIfExistingFloor(Floor floor);
	public int									checkIfExistingFloorDetail(FloorDetail floorDetail);
	public int									checkIfExistingFloorDetailDeactivate(FloorDetail floorDetail);
	
	public List<FloorType>						selectAllFloorTypeForFloor(Floor floor);
	public List<FloorType>						selectAllDeactivatedFloorTypeForFloor(Floor floor);
	public void									removeFloorTypeFromFloor(FloorDetail floorDetail);
	public void									activateFloorTypeFromFloor(FloorDetail floorDetail);
	
	public void									createFloorType(FloorType floorType);
	public FloorType							getFloorType(FloorType floorType);
	public List<FloorType>						getAllFloorType();
	public int									checkIfExistingFloorType(FloorType floorType);
	
	public UnitCategory							getUnitCategory(UnitCategory unitCategory);
	public List<UnitCategory>					getAllUnitCategoryFromFloor(Floor floor);
	public int									checkIfExistingUnitCategory(UnitCategory unitCategory);
	
	public void									configureUnitCategoryPrice(UnitCategory unitCategory);
	public Double								getUnitCategoryPrice(UnitCategory unitCategory);
	
}
