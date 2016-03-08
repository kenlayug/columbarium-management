package columbarium.business.impl;

import columbarium.business.FloorBusiness;
import columbarium.dao.FloorRepository;
import columbarium.model.Floor;
import columbarium.model.FloorType;
import columbarium.model.UnitCategory;

public class FloorBusinessImpl implements FloorBusiness{

	private FloorRepository floorRepository;
	
	public void setFloorRepository(FloorRepository floorRepository){
		this.floorRepository = floorRepository;
	}
	
	@Override
	public String configureFloor(Floor floor) {
		
		if (floor.getFloorTypeList().size() == 0){
			return "input";
		}
		return floorRepository.configureFloor(floor);
	}

	@Override
	public String createFloorType(FloorType floorType) {

		if (floorType.getStrFloorDesc().length() == 0 ||
				floorType.getStrFloorDesc() == null ||
				floorType.getStrFloorDesc().equals(" ")){
			return "input";
		}
		return floorRepository.createFloorType(floorType);
	}

	@Override
	public String configureUnitPrice(Floor floor) {
		
//		for (UnitCategory unitCategory : floor.getUnitCategoryList()) {
//			if (unitCategory.getDblPrice() == 0){
//				return "input";
//			}
//		}
//		return floorRepository.configureUnitCategoryPrice(floor.getUnitCategoryList());
		return null;
	}

	@Override
	public Floor getFloorById(int floorId) {
		
		Floor floor = new Floor();
		floor.setFloorId(floorId);
		return floorRepository.getFloor(floor);
	}

}
