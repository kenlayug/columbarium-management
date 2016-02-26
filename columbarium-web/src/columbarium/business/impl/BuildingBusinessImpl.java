package columbarium.business.impl;

import columbarium.business.BuildingBusiness;
import columbarium.dao.BuildingRepository;
import columbarium.model.Building;
import columbarium.model.Floor;

public class BuildingBusinessImpl implements BuildingBusiness{

	private BuildingRepository buildingRepository;
	
	public void setBuildingRepository(BuildingRepository buildingRepository){
		this.buildingRepository = buildingRepository;
	}
	
	@Override
	public String createBuilding(Building building) {

		if (building.getStrBuildingName().length() == 0 ||
				building.getStrBuildingName() == null){
			return "input";
		}
		if (building.getStrBuildingLocation().length() == 0 ||
				building.getStrBuildingLocation() == null){
			return "input";
		}
		return buildingRepository.createBuilding(building);
	}

	@Override
	public String createFloor(Floor floor) {

		if (floor.getIntColumnNo() == 0){
			return "input";
		}
		if (floor.getIntLevelNo() == 0){
			return "input";
		}
		if (floor.getBuildingId() == 0){
			return "input";
		}
		return buildingRepository.createFloor(floor);
		
	}

}
