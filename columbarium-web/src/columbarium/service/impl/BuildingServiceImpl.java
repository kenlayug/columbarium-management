package columbarium.service.impl;

import java.util.List;

import columbarium.business.BuildingBusiness;
import columbarium.dao.BuildingRepository;
import columbarium.model.Building;
import columbarium.service.BuildingService;

public class BuildingServiceImpl implements BuildingService{

	private BuildingBusiness buildingBusiness;
	private BuildingRepository buildingRepository;
	
	public void setBuildingRepository(BuildingRepository buildingRepository){
		this.buildingRepository = buildingRepository;
	}
	
	public void setBuildingBusiness(BuildingBusiness buildingBusiness){
		this.buildingBusiness = buildingBusiness;
	}
	
	@Override
	public String createBuilding(Building building) {
		return buildingBusiness.createBuilding(building);
	}

	@Override
	public List<Building> getAllBuilding() {
		return buildingRepository.getAllBuilding();
	}

	@Override
	public Building getBuilding(String strBuildingName) {
		return buildingBusiness.getBuilding(strBuildingName);
	}

	@Override
	public String updateBuilding(Building building) {
		return buildingBusiness.updateBuilding(building);
	}

	@Override
	public String deactivateBuilding(String strBuildingName) {
		return buildingBusiness.deactivateBuilding(strBuildingName);
	}

	@Override
	public Building getBuildingById(int buildingId) {
		return buildingBusiness.getBuildingById(buildingId);
	}

}
