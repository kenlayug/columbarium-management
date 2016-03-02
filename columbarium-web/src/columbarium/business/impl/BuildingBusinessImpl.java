package columbarium.business.impl;

import columbarium.business.BuildingBusiness;
import columbarium.dao.BuildingRepository;
import columbarium.model.Building;

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
		if (building.getStrBuildingName().equals(" ")){
			return "input";
		}
		if (building.getStrBuildingLocation().equals(" ")){
			return "input";
		}
		return buildingRepository.createBuilding(building);
	}

	@Override
	public Building getBuilding(String strBuildingName) {

		if (strBuildingName == null || strBuildingName.length() == 0){
			return null;
		}
		if (strBuildingName.equals(" ")){
			return null;
		}
		Building building = new Building(strBuildingName);
		return buildingRepository.getBuilding(building);
	}

	@Override
	public String updateBuilding(Building building) {

		if (building.getStrBuildingName() == null ||
				building.getStrBuildingName().length() == 0 ||
				building.getStrBuildingName().equals(" ")){
			return "input";
		}
		if (building.getStrBuildingLocation() == null ||
				building.getStrBuildingLocation().length() == 0 ||
				building.getStrBuildingLocation().equals(" ")){
			return "input";
		}
		return buildingRepository.updateBuilding(building);
	}

	@Override
	public String deactivateBuilding(String strBuildingName) {
		
		if (strBuildingName == null || strBuildingName.length() == 0 ||
				strBuildingName.equals(" ")){
			return "input";
		}
		Building building = new Building(strBuildingName);
		return buildingRepository.deactivateBuilding(building);
	}

}
