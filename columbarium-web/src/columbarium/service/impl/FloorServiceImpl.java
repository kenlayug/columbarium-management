package columbarium.service.impl;

import java.util.List;

import columbarium.business.FloorBusiness;
import columbarium.dao.FloorRepository;
import columbarium.model.Floor;
import columbarium.model.FloorType;
import columbarium.model.UnitCategory;
import columbarium.service.FloorService;

public class FloorServiceImpl implements FloorService{

	private FloorBusiness floorBusiness;
	private FloorRepository floorRepository;
	
	public void setFloorBusiness(FloorBusiness floorBusiness) {
		this.floorBusiness = floorBusiness;
	}

	public void setFloorRepository(FloorRepository floorRepository) {
		this.floorRepository = floorRepository;
	}

	@Override
	public String configureFloor(Floor floor) {
		return floorBusiness.configureFloor(floor);
	}

	@Override
	public String createFloorType(FloorType floorType) {
		return floorBusiness.createFloorType(floorType);
	}

	@Override
	public List<FloorType> getAllFloorType() {
		return floorRepository.getAllFloorType();
	}

	@Override
	public List<UnitCategory> getAllUnitCategoryFromFloor(Floor floor) {
		return floorRepository.getAllUnitCategoryFromFloor(floor);
	}

	@Override
	public String configureUnitPrice(Floor floor) {
		return floorBusiness.configureUnitPrice(floor);
	}

}
